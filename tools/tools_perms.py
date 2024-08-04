import os
import stat

def main():
    for filename in os.listdir(f"{os.path.dirname(__file__)}"):
        f = os.path.join(f"{os.path.dirname(__file__)}", filename)
        os.chmod(f, os.stat(f).st_mode | stat.S_IEXEC)
        
if __name__ == "__main__":
    main()


