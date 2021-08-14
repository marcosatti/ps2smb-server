FROM dperson/samba

COPY run.sh /run.sh
COPY smb.conf /etc/samba/smb.conf

EXPOSE 445

ENTRYPOINT ["/sbin/tini", "--", "/run.sh"]
