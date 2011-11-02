#!/bin/sh

file=kernel-src.pl     # script to create
linux_src_dir=/usr/src/linux-headers-2.6.32-31-generic/    # location of kernel src

cat << EOF > "$file"
#!/usr/bin/perl
srand;
rand(\$.) < 1 && (\$line = \$_) while <DATA>;
print \$line;
__DATA__
EOF
find -L "$linux_src_dir" -name \*.c >> $file
#modified to:
#find -L "$linux_src_dir" -name \*.c >> $file
#find -L "$linux_src_dir" -name \*.h >> $file
#find -L "$linux_src_dir" -name \*.sh >> $file
#find -L "$linux_src_dir" -name \*.pl >> $file

chmod 555 $file
