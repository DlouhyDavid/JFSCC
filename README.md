# JFSCC
Dokcer contianer for JoinFS-CONSOLE

## Usage

1. Build image

```bash
docker build -t jfscc:1.0.0
```

2. Prepare your env file. You can copy the ``.env.example`` and add the required values. The meaning of the values is in the following table.

<table>
    <tr>
        <th>
            Variable
        </th>
        <th>
            Label
        </th>
    </tr>
    <tr>
        <td>
            HUB_NAME
        </td>
        <td>
            The public name of this hub that will be shown in everyone's hub list
        </td>
    </tr>
    <tr>
        <td>
            HUB_ABOUT
        </td>
        <td>
            A short description for this hub that will appear in everyone's hub list
        </td>
    </tr>
    <tr>
        <td>
            HUB_PASSWD
        </td>
        <td>
            Protect your session with a password
        </td>
    </tr>
</table>


3. Run your hub


```bash
docker run --name jfscc --env-file .env -p 6112:6112 --restart unless-stopped -it -d jfscc:1.0.0 /bin/sh -c "bash /srv/JoinFS-CONSOLE/start-hub.sh
```

