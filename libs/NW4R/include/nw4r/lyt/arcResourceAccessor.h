#ifndef NW4R_LYT_ARC_RESOURCE_ACCESSOR_H
#define NW4R_LYT_ARC_RESOURCE_ACCESSOR_H

#include <revolution/types.h>

#include <revolution/arc.h>

#include <nw4r/ut/LinkList.h>
#include <nw4r/ut/Font.h>

#include <nw4r/lyt/resourceAccessor.h>

namespace nw4r {
    namespace lyt {
        static const int RESOURCE_NAME_MAX  = 128;

        class FontRefLink {
            public:
                FontRefLink();
                ~FontRefLink();
                
                void        Set(const char* name, ut::Font* pFont);

                const char* GetFontName() const { return mFontName; }
                ut::Font*   GetFont() const     { return mpFont; }

                ut::LinkListNode mLink;     // 0x00
            
            protected:
                char        mFontName[RESOURCE_NAME_MAX]; // 0x08
                ut::Font*   mpFont;         // 0x88
        };
        typedef ut::LinkList<FontRefLink, offsetof(FontRefLink, mLink)> FontRefLinkList;
        
        class ArcResourceLink {
            public:
                ArcResourceLink() {}

                bool        Set(void* archiveStart, const char* resRootDirectory);
                
                char*       GetResRootDir() { return mResRootDir; }
                ARCHandle*  GetArcHandle()  { return &mArcHandle; }

                ut::LinkListNode mLink;                     // 0x00
            
            protected:
                ARCHandle   mArcHandle;                     // 0x08

                char        mResRootDir[RESOURCE_NAME_MAX]; // 0x24
        };
        typedef ut::LinkList<ArcResourceLink, offsetof(ArcResourceLink, mLink)> ArcResourceLinkList;

        class ArcResourceAccessor : public ResourceAccessor {
            public:
                ArcResourceAccessor();
                virtual ~ArcResourceAccessor() {}

                virtual void*       GetResource(u32 resType, const char* name, u32* pSize = NULL);
                virtual ut::Font*   GetFont(const char* name);

                bool                Attach(void* archiveStart, const char* resourceRootDirectory);

            private:
                ARCHandle       mArcHandle;                     // 0x04
                void*           mArcBuf;                        // 0x20,

                FontRefLinkList mFontList;                      // 0x24

                char            mResRootDir[RESOURCE_NAME_MAX]; // 0x30
        };

        class MultiArcResourceAccessor : public ResourceAccessor {
            public:
                MultiArcResourceAccessor();
                virtual ~MultiArcResourceAccessor();

                void                Attach(ArcResourceLink* pLink);
                void                DetachAll() { reinterpret_cast<ut::detail::LinkListImpl*>(&mArcList)->Clear();}
                
                void                RegistFont(FontRefLink* pLink);
                
                virtual void*       GetResource(u32 resType, const char* name, u32* pSize = NULL);
                virtual ut::Font*   GetFont(const char* name);

            protected:
                ArcResourceLinkList mArcList;   // 0x04
                FontRefLinkList     mFontList;  // 0x10
        };

        namespace detail {
            ut::Font*   FindFont(FontRefLinkList* pFontRefList, const char* name);
        }
    }
}

#endif // NW4R_LYT_ARC_RESOURCE_ACCESSOR_H
