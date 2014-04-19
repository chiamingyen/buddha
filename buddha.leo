<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://leoeditor.com/leo_toc.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="2014pythonE.20140410091619.2059" a="E"><vh>@settings</vh>
<v t="2014pythonE.20140410091619.2060"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="2014pythonE.20140410091619.2061"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="2014pythonE.20140410091619.2054" a="E"><vh>Buddha 緣起</vh>
<v t="2014pythonE.20140411082259.1644"><vh>瀏覽器檢視</vh></v>
</v>
<v t="2014pythonE.20140410091619.2357"><vh>修改紀錄</vh></v>
<v t="2014pythonE.20140410091619.2085" a="E"><vh>@path wsgi</vh>
<v t="2014pythonE.20140410091619.2086" a="E"
expanded="2014pythonE.20140410091619.2088,"><vh>@file application</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="2014pythonE.20140410091619.2054">一直希望有個雲端網站, 可以閱讀 http://www.amtb.org.tw/ 中淨空老和尚所講的經.

目前只有兩個需求:

1. 直接採用從網站下載的檔案架構

2. 可以直接閱讀, 可以前後翻頁.

2014.04.10 完成上述兩個功能要求, 原本使用 session 儲存頁面標題資料, 但是因為頁數很多, 在 OpenShift 中每個 session 值高達 1mb, 一下子竟然就吃掉幾百 mb 的硬碟空間, 導致總容量超過 1GB 的限制, 因此目前改為使用一個不到 2MB 的檔案來儲存頁面標題資料.

接下來, 希望 title page 內容可以分頁, 而且可以與內容同在一個畫面, 就像 CMSimply 一樣.</t>
<t tx="2014pythonE.20140410091619.2059"></t>
<t tx="2014pythonE.20140410091619.2060">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="2014pythonE.20140410091619.2061">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="2014pythonE.20140410091619.2085"></t>
<t tx="2014pythonE.20140410091619.2357">@language python

'''
讓程式自動新增 tmp, downloads 與 images 目錄

增加 sorted() to files, 因為在 RedHat 上不會自動 sort (在 Windows 會)

在文章前後加入 &lt;p&gt; &lt;/p&gt;

每次 session 都將近 1mb, 無法在 OpenShift 上執行, 要將 1MB 放在記憶體中

改為不使用 session

2014.04.11 若 data 目錄下有 filelist.txt 則直接引用, 若無, 則 walk dir 建立 filelist.txt, 其中一個重要的功能是將程式中的 mylist 數列以 json 模組與硬碟中的檔案進行互動:
'''

# 將數列寫入檔案:

writefile = open(data_dir+"/filelist.txt", "w", encoding="utf-8")
writefile.write(json.dumps(mylist))
 
# 從檔案取出數列:

with open(data_dir+"/filelist.txt", encoding="utf-8") as json_file:
    mylist = json.load(json_file)
</t>
<t tx="2014pythonE.20140411082259.1644">目前在 PC Chrome 使用最佳, 可以放大畫面, 然後頁面會配合重整, 在 ipad air 中的 Chrome 則無法達到相同的功能.</t>
</tnodes>
</leo_file>
