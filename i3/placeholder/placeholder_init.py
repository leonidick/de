import os
import sys

def main():
    workspace_count = int(sys.argv[1])

    commands_list = [
        'workspace {}; open; '.format(i)
            for i in range(1, workspace_count + 1)
    ]
    commands = ''.join(commands_list)
    
    msg = (
        'i3-msg '
        + '\''
        + commands
        + 'workspace 1; '
        + 'open;'
        + '\''
    )
    print(msg)

    os.system(msg)

    

if __name__ == '__main__':
    main()

