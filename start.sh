if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SarveshRathod01/Advfilter /Advfilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advfilter
fi
cd /Advfilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
