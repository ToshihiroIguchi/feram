#初期設定
FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -y software-properties-common

#キーボードレイアウト
#https://qiita.com/DS27/items/7301cce7a2c1dec107ad
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y  -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" keyboard-configuration

#各種インストール
#http://loto.sourceforge.net/feram/INSTALL.html
RUN apt-get install -y libatlas-base-dev gfortran libfftw3-dev gnuplot ruby make imagemagick
RUN apt-get --purge remove liblapack-dev liblapack3 

#feram本体をダウンロード
RUN apt-get install -y wget
RUN wget https://sourceforge.net/projects/loto/files/feram/feram-0.26.04/feram-0.26.04.tar.xz

#解凍
RUN apt-get install xz-utils
RUN xz -dv feram-0.26.04.tar.xz
RUN tar xfv feram-0.26.04.tar

#ファイル移動。Dockerfileではcdが使えないのでWORKDIRで代用。
WORKDIR feram-0.26.04 
RUN mkdir build-gfortran-4.8
WORKDIR build-gfortran-4.8

#ビルド
RUN ../configure
WORKDIR src
RUN make -j --max-load=10.0


