set -euo pipefail

echo "event: $GITHUB_EVENT_NAME"
echo "actor: $GITHUB_ACTOR"
echo "ref: $GITHUB_REF"
echo "sha: ${GITHUB_SHA:0:7}"

jq -r '"action: \(.action)"' "$GITHUB_EVENT_PATH"
jq -r '"pr: \(.number) onto \(.pull_request.base.ref)"' "$GITHUB_EVENT_PATH"
jq -r '"fork: \(.pull_request.head.repo.fork)"' "$GITHUB_EVENT_PATH"
