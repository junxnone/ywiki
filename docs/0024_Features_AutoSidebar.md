---
Title | Features AutoSidebar
-- | --
Created @ | `2022-12-16T04:15:25Z`
Last Modify @| `2022-12-21T07:16:17Z`
Labels | `Features`
Edit @| [here](https://github.com/junxnone/twiki/issues/24)

---
# 自动生成 Sidebar


- 自动生成 `markdown` 格式的 sidebar
- 格式以空格为间隔分割 `Label` 
  - Issue Name: `L1 L2 L3 ...`
  - Markdown File: `L1_L2_L3_(...).md`
- 以第一个 `# ` 后面的内容作为 **Title**
  -  如果没有, 则以 最后一个 `Ln` 作为 **Title**
- [条件] 触发, 自动更新
  - 使用 `pin issue` 手动触发
  - 创建新 issue 时触发

## 生成的 sidebar格式

```
- L1
  - L2
    - L3
```
