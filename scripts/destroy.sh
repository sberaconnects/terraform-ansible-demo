
#!/bin/bash
cd "$(dirname "$0")/../terraform"
terraform destroy -auto-approve
