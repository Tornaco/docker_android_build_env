repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
while [ $? -ne 0 ]
do
    repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
done
