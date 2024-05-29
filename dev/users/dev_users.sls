user_kat:
  user.present:
    - name: kat
    - fullname: kat douglas
    - shell: /bin/bash
    - home: /home/kat
    - uid: 10001
    - usergroup: True
    - groups:
      - wheel

kat_key:
  ssh_auth.present:
  - name: kat
  - user: kat
  - source: salt://users/keys/kat.pub