FROM nginx
MAINTAINER "robert robertzhangwenjie@gmail.com"

RUN rm /etc/nginx/conf.d/default.conf && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo 'Asia/Shanghai' >/etc/timezone
ADD default.conf /etc/nginx/conf.d
ADD dist/ /usr/share/nginx/html/


