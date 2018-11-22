this is configuration of vim c++

1. install bundle
2. copy vimrc as ~/.vimrc
3. open vim and run :PluginInstall to install all plugin
4. install YouCompleteMe, refer to https://github.com/Valloric/YouCompleteMe
5. update .ycm_extra_conf.py in ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py

the ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py include enviroment configure, compiler flag, include path and so

you can also use YCM-Generator to generate a template
