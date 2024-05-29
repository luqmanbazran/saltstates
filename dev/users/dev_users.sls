user_kat:
  user.present:
    - name: kat
    - fullname: kat douglas
    - shell: /bin/bash
    - home: /home/kat
    - uid: 10001
    - gid_from_name: True
    - groups:
      - wheel

lbazran_key:
  ssh.auth.present:
  - name: kat
  - user: kat
  - source: salt://users/keys/kat.pub