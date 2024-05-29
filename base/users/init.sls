user_lbazran:
  user.present:
    - name: lbazran
    - fullname: luqman bazran
    - shell: /bin/bash
    - home: /home/lbazran
    - uid: 10000
    - gid_from_name: True
    - groups:
      - wheel

lbazran_key:
  ssh.auth.present:
  - name: lbazran
  - user: lbazran
  - source: salt://users/keys/lbazran.pub