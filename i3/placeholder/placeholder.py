import os

def main():
    shell_script_path = os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        'shell_script.sh'
    )

    shell_answer = os.popen(shell_script_path).read()
    lines = shell_answer.splitlines()
    for line in lines:
        if line.startswith('--> space'):
            os.system('i3-msg open')
            return


if __name__ == '__main__':
    main()

