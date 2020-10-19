[![](https://images.microbadger.com/badges/image/jgeusebroek/archivemail.svg)](https://microbadger.com/images/jgeusebroek/archivemail "Get your own image badge on microbadger.com")
# Docker Archivemail

A docker image running Debian Linux (Buster) providing [Archivemail](http://archivemail.sourceforge.net/).

## Usage

Use exactly like you would use the non dockerized Archivemail. See it's documentation.

For example:
`docker run --rm -ti -v $PWD:/archive jgeusebroek/archivemail -o /archive --copy imaps://username:optionalpwd@server/"Some Folder"/mailbox`

## License

MIT / BSD

## Author Information

[Jeroen Geusebroek](http://jeroengeusebroek.nl/)