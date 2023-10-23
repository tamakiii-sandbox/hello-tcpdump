.PHONY: tcpdump tcpdump/image

TARGET :=

tcpdump: tcpdump/image
	docker run -it --rm --net container:$(TARGET) debug tcpdump -nn -X port 80

tcpdump/image:
	docker build -t debug .
