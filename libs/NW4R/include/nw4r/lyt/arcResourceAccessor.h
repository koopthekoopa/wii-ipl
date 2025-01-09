#ifndef NW4R_LYT_ARC_RESOURCE_ACCESSOR_H
#define NW4R_LYT_ARC_RESOURCE_ACCESSOR_H

#include <revolution/types.h>

#include <revolution/arc.h>

#include <nw4r/ut/LinkList.h>
#include <nw4r/ut/Font.h>

#include <nw4r/lyt/resourceAccessor.h>

namespace nw4r {
    namespace lyt {
        class FontRefLink {
            public:
                FontRefLink();
                ~FontRefLink();
                
                void        Set(const char* name, ut::Font* pFont);

                ut::Font*   GetFont() const     { return mpFont; }

                ut::LinkListNode mLink;
            
            protected:
                char        mFontName[128]; // 0x8
                ut::Font*   mpFont;         // 0x88
        };
        typedef ut::LinkList<FontRefLink, 0> FontRefLinkList;
        
        class ArcResourceLink {
            public:
                ArcResourceLink() {}

                void        Set(void* archiveStart, const char* resRootDirectory);
                
                char*       GetResRootDir() { return mResRootDir; }
                ARCHandle*  GetArcHandle()  { return &mArcHandle; }

                ut::LinkListNode mLink;
            
            protected:
                ARCHandle   mArcHandle;         // 0x8
                char        mResRootDir[128];   // 0x24
        };
        typedef ut::LinkList<ArcResourceLink, 0> ArcResourceLinkList;

        class MultiArcResourceAccessor : public ResourceAccessor {
            public:
                MultiArcResourceAccessor();
                virtual ~MultiArcResourceAccessor();

                void                Attach(ArcResourceLink* pLink);
                void                DetachAll();
                
                void                RegistFont(FontRefLink* pLink);
                
                virtual void*       GetResource(u32 resType, const char* name, u32* pSize = NULL);
                virtual ut::Font*   GetFont(const char* name);

            protected:
                ArcResourceLinkList mArcList;   // 0x4
                FontRefLinkList     mFontList;  // 0x10
        };
    }
}

#endif // NW4R_LYT_ARC_RESOURCE_ACCESSOR_H
