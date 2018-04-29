
$model_to_test = "Approx" ;
$conf_file_name = 'approx.conf';
$conf_dir = '/etc/approx' ;

@tests = (
    {
        name => 'basic' ,
        check => {
            # 'AuthorizedKeysFile:0' => '/etc/ssh/userkeys/%u',
            # 'AuthorizedKeysFile:1' => '/var/lib/misc/userkeys2/%u',
        },
        file_contents_like => {
            # '/etc/ssh/sshd_config' => qr!/etc/ssh/userkeys/%u /var/lib/misc/userkeys2/%u! ,
        }
    },
);

1;
