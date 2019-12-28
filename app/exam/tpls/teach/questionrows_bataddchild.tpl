{x2;if:!$userhash}
{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2">
            {x2;include:menu}
        </div>
        <div class="span10" id="datacontent">
{x2;endif}
            <ul class="breadcrumb">
                <li><a href="index.php?{x2;$_app}-teach">{x2;$apps[$_app]['appname']}</a> <span class="divider">/</span></li>
                <li><a href="index.php?{x2;$_app}-teach-rowsquestions&page={x2;$page}{x2;$u}">题冒题管理</a> <span class="divider">/</span></li>
                <li><a href="index.php?{x2;$_app}-teach-rowsquestions-rowsdetail&questionid={x2;$question['qrid']}&page={x2;$page}{x2;$u}">子试题列表</a> <span class="divider">/</span></li>
                <li class="active">批量添加子试题</li>
            </ul>
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#">批量添加子试题</a>
                </li>
                <li class="pull-right">
                    <a href="index.php?{x2;$_app}-teach-rowsquestions-rowsdetail&questionid={x2;$question['qrid']}&page={x2;$page}{x2;$u}">子试题列表</a>
                </li>
            </ul>
            <form action="index.php?exam-teach-rowsquestions-bataddchildquestion" method="post" class="form-horizontal">
                <div class="control-group">
                    <label class="control-label" for="content">试题文本：</label>
                    <div class="controls">
                        <textarea id="content" rows="10" class="input-xxlarge span9" name="content"></textarea>
                        <span class="help-block">请将准备好的格式粘贴到文本框内，点击保存即可</span>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button class="btn btn-primary" type="submit">提交</button>
                        <input type="hidden" name="page" value="{x2;$page}"/>
                        <input type="hidden" name="questionparent" value="{x2;$question['qrid']}" />
                        <input type="hidden" name="type" value="1"/>
                        <input type="hidden" name="insertquestion" value="1"/>
                        {x2;if:is_array($search)}{x2;tree:$search,arg,aid}
                        <input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>
                        {x2;endtree}{x2;endif}
                    </div>
                </div>
            </form>
{x2;if:!$userhash}
        </div>
    </div>
</div>
</body>
</html>
{x2;endif}
