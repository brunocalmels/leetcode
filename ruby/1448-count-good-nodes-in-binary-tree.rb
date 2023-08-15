# @param {TreeNode} root
# @param {Integer} max_val
# @return {Integer}
def dfs(root, max_val)
  return 0 unless root

  res = (root.val >= max_val) ? 1 : 0
  max_val = [max_val, root.val].max
  res += dfs(root.left, max_val)
  res += dfs(root.right, max_val)

  res
end

# @param {TreeNode} root
# @return {Integer}
def good_nodes(root)
  dfs(root, root.val)
end
