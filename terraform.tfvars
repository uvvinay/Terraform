vpc_name="project-vpc"
vpc_cidr_block = "17.0.0.0/16"
public_subnet_cidr_blocks = ["17.0.1.0/16", "17.0.2.0/16"]
private_subnet_cidr_block = ["17.0.3.0/16", "17.0.4.0/16"]

region = ["ap-south-1"]
availability_zone = ["ap-south-1a", "ap-south-1b"]


ami = "ami-0c55b159cbfafe1f0" # Example AMI ID, replace with your own
instance_type = "t2.medium" 
tag= {
  Name = "project-ec2-all"
}   
user_data = "jen_3_tier_terra.sh"
public_key = "-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEA0/UgJbtb/U1yKXrrQoEQBd31W3uQ5bhamOsqCE3cjMZv7Tp9
1/N2TU0i0GOmxF79IdLDAaPN2Mnch+th/1TUkRzmQyEE9tl2Uv6VU4F/dJqz175u
OmKo5EKei4dMJlSYowIlS9Hp/GUO1tiPImeGYUledclYvcE9wgO7ghjMZAVBax8m
iF+92I+6qTZ2KdtLmdFaVA6y4QUx//c+j/BxQEJOtyX9E+cF/gSGGNVbr4OpLe91
RSJK+K3tV4gE4ifFGUif12K9BE3YUOUkXSCaBzj0mSE/3dMO4VtnAN4bfX0YJtCC
cNnsIQtgmIUUP9GzUuFjLaEf9NtPDjihf38kiQIDAQABAoIBAGWGEQrhrlMq6FbE
ALHPHfyhbyeNjT7rScHbSjvGB7EKT4xCqwpoHC80lktYoAWJNhggWrWLX0rKja4w
6bSiTlrfi891nmoaiVmBhccEzSbt/tyE40ll/l2vJz/P44KsnJvfqDuj5T62rR/t
hMnG6o/o06z5b18ck1c98G+FL0lsd9xRFgAohOlLzsCetaKsaqIhBSh/duLpZpUD
hmZdlSsdQGEe0DXB5GQ7OQMDld9gdXr6E6VoqBhk/Whyhl8TRQbJijOD3lmWhgDh
iC/o13qWtaaZK3ZncnrhQ05+EdcRlLhjq4Wb/MliD50+cGnQstmnZnKT6iSWc3D+
TP77Rj0CgYEA6mpCop+Rq3dZeX1N8N4uRGEJOqqYT9a4LSn0pl/nCT13Y/GxKPAX
e6WoXiGkF5tuSdM7/qv4hpgZMg4WjcZVCoxcUoEN9dbmhHATl9NYl0L/nqSFYogM
Bbe4GpVqC5Q9ifioiv+pOYFDVNC907RgBO9/vu27upU5l0bKNau5ZqsCgYEA53l8
RetxaWv2eOrAqgPvI9NoP67nsTBAuZe6XEfI6zKvSpeIaBhX+csMvR9Rv8Ce1GC/
ZbzOnL4YlBCgYB9XSmyTLIlbkoo6KMhlwtcRY16ZtkYrpgN+AcNhwwPD2ZaTVeSw
3EyiazjptfHCyS7dgxTJpOLJAHkpKtyUcvHF8ZsCgYBQi/ifloLgTx9AfozkggOV
3V3lea7iaB5a7nqxHGzvoN5ASlEchvsasn5a8eZHclIALgQEayT3YpXtvCeFyat4
92fVtaCNY61LvpMM7UMYnp3k7hUjGSpAYLNy9vo8RlCq8vU+5cBJESCIqT1A3E7O
A1l6yodiAlqKn3ll3b7UBwKBgC60BU36NjTGEsHM47ip+Isq8YK/4IGQsc6AfZp2
5WQHIvUS4/PUzZNZ06Uo946P57wEFToKwUlA1aayQBmE2VDr3ToEMNS9TQTDgjyw
thJtmOf8+nuRgtAKQuRdExwI1ItlDAY29CJcJlOOhvWenhT/kbvSAio1SAgc31rd
y0l3AoGAPSUCfAjPMG5CxlWltDNchloz3pJaowXPZ4/6Afzthp5HC7GeJ5xprJlZ
pQCDu6eVDEW9gR/flec4XyZ1DnvU7qsawltLnF/vVbC/9aOE7O05KjyOwwMpeRp2
wxglyZXPsUKPQUnUhW1tWtlOuEgxdDeGP9fohiF3LKR3dU0/9JM=
-----END RSA PRIVATE KEY-----"