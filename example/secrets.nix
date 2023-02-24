let
  user1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL0idNvgGiucWgup/mP78zyC23uFjYq0evcWdjGQUaBH";
  system1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPJDyIr/FSz1cJdcoW69R+NrWzwGK/+3gJpqD1t8L2zE";
  nonsecret_in_store = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBDuoXDYezHx+BMM0KV4gRrwWlie8MSvQIw0Yu5gOL55";
in {
  "secret1.age".publicKeys = [user1 system1];
  "secret2.age".publicKeys = [user1];
  "passwordfile-user1.age".publicKeys = [user1 system1];
  "test_issue_165.age".publicKeys = [nonsecret_in_store];
}
