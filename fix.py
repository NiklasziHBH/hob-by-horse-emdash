with open('wrangler.jsonc') as f:
    content = f.read()
kv = '"kv_namespaces": [{"binding": "SESSION", "id": "792a4fe194434169b92b4c9d6a8a8803"}],\n        '
content = content.replace('"r2_buckets":', kv + '"r2_buckets":')
with open('wrangler.jsonc', 'w') as f:
    f.write(content)
print('Done!')
