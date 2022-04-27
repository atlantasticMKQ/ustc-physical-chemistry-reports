# ustc-physical-chemistry-reports
2020年秋季学期和2021年春季学期大学物理化学实验报告模板-基于org-mode, gnuplot

## 关于物化下的模板
非常遗憾，由于我的一块工作了四年左右的希捷机械硬盘炸了，导致很多资料遗失，其中就包括2021年春季学期的资料，很幸运，物化上的资料在家有备份，但是物化下的除非我能有一天突然想起还有什么神秘的备份存在，似乎就是找不回来了

## 关于其中附带的种种脚本
由于当时每周只留了一个下午的时间处理数据，所以并没有写出来可以重复使用的脚本，基本上就是通过awk,sed之类的魔法操作生成可以被gnuplot读取的数据，再写一个gnuplot脚本的模板，再用shell批量替换gnuplot模板里面诸如xxxxxx之类的变量名，实现批量绘图的操作。综上所述，只有参考价值。

## 关于emacs的配置
当时没有很仔细地研究，只是拿来能用即可，于是会有大段我不太理解含义的内容，在emacs里打开每一章的org文件，然后`C-e l o`即可导出，为了有一个良好的表格编辑体验，事先需要安装valign-mode. 不过每一节都有tex文件，如果不想用emacs的话直接改tex文件就ok了。
```
;;这是啥呀qwq?
(setq org-emphasis-alist (quote (("*" bold "<b>" "</b>") 
                                 ("/" italic "<i>" "</i>")
                                 ("_" underline "<span 
style=\"text-decoration:underline;\">" "</span>")
                                 ("=" org-code "<code>" "</code>"
                 verbatim)
                                 ("~" org-verbatim "<code>" "</code>"
                 verbatim)
                                 ("+" (:strike-through t) "<del>" "</del>")
                                 ("@" org-warning "<b>" "</b>")))
      org-export-latex-emphasis-alist (quote 
                                       (("*" "\\textbf{%s}" nil)
                                        ("/" "\\emph{%s}" nil) 
                                        ("_" "\\underline{%s}" nil)
                                        ("+" "\\texttt{%s}" nil)
                                        ("=" "\\verb=%s=" nil)
                                        ("~" "\\verb~%s~" t)
                                        ("@" "\\alert{%s}" nil))))
;;为了让org-mode中表格整齐
(add-hook 'org-mode-hook #'valign-mode)

;;还是org-mode,这里是为了使用xelatex来编译
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f" "xelatex -interaction nonstopmode %f"))
(setq org-export-allow-bind-keywords t)

```

## 关于texlive的配置
如果你用的是Archlinux, 只需用pacman把texlive开头的包装个七七八八就ok了，如果是windows,macos啥的，八仙过海各显神通吧。

## 关于最后的分数
3.3x2

