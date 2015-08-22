git config --global user.name "Jenkins"
git config --global user.email "jenkin@com.zgardner.msa.app.logging.di"

git add com.zgardner.msa.app.logging.api.war
git commit -m "Bundling Logging API war for build #${BUILD_NUMBER}"
git push
