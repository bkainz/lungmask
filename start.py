import subprocess as sb
import os

def run_lungmask():
    cmd = "lungmask /home/source /home/output "

    if "MODEL" in os.environ:
        cmd += " --modelname {}".format(os.environ["MODEL"])

    sb.call([cmd], shell=True)


if __name__ == "__main__":
    run_lungmask()