FROM dperson/samba

COPY run.sh /run.sh
RUN chmod u+rx /run.sh

COPY smb.conf /etc/samba/smb.conf
RUN chmod u+r /etc/samba/smb.conf

EXPOSE 445

ENTRYPOINT ["/sbin/tini", "--", "/run.sh"]
