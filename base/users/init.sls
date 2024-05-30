{% for user, data in pillar.get('admin_users', {}).items() %}
user_{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: {{ data['fullname'] }}
    - home: {{ data['home'] }}
    - shell: {{ data['shell'] }}
    - uid: {{ data['uid'] }}
    - usergroup: {{ data['usergroup'] }}
    - groups: {{ data['groups'] }}

{{ user }}_key:
  ssh_auth.present:
    - user: {{ user }}
    - name: {{ data['ssh_key'] }}

{% endfor %}