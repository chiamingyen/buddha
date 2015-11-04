<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
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
<v t="amd.20151104231935.1"><vh>OpenShift</vh></v>
<v t="2014pythonE.20140411082259.1644"><vh>瀏覽器檢視</vh></v>
</v>
<v t="2014pythonE.20140410091619.2357"><vh>修改紀錄</vh></v>
<v t="amd.20151104220945.1"><vh>改為 Flask 與 Cherrypy 並行版本</vh></v>
<v t="2014pythonE.20140410091619.2085" a="E"><vh>@path wsgi</vh>
<v t="2014pythonE.20140410091619.2086" a="E"><vh>@clean application</vh>
<v t="2014pythonE.20140410091619.2087"><vh>buddha declarations</vh></v>
<v t="no28.20140419141724.1984"><vh>access_list</vh></v>
<v t="2014pythonE.20140410091619.2088" a="E"><vh>class Buddha</vh>
<v t="2014pythonE.20140410091619.2356"><vh>__init__</vh></v>
<v t="no28.20140419141724.1982"><vh>index</vh></v>
<v t="2014pythonE.20140410091619.2094"><vh>default</vh></v>
<v t="2014pythonE.20140410091619.2358"><vh>walkdir</vh></v>
<v t="2014pythonE.20140410091619.2093"><vh>content</vh></v>
</v>
</v>
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
<t tx="2014pythonE.20140410091619.2086">@language python
@tabwidth -4
@others
########################### 4. 安排啟動設定
# 配合程式檔案所在目錄設定靜態目錄或靜態檔案
application_conf = {'/static':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': _curdir+"/static"},
        '/downloads':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/downloads"},
        '/images':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/images"}
    }

########################### 5. 在近端或遠端啟動程式
# 利用 Buddha() class 產生案例物件
root = Buddha()
# 假如在 os 環境變數中存在 'OPENSHIFT_REPO_DIR', 表示程式在 OpenShift 環境中執行
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 雲端執行啟動
    application = cherrypy.Application(root, config = application_conf)
else:
    # 近端執行啟動
    '''
    cherrypy.server.socket_port = 8083
    cherrypy.server.socket_host = '127.0.0.1'
    '''
    cherrypy.quickstart(root, config = application_conf)
</t>
<t tx="2014pythonE.20140410091619.2087">########################### 1. 導入所需模組
import cherrypy
import os
import json
# for index 分頁使用
import math

########################### 2. 設定近端與遠端目錄
# 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
file_location = "/static/buddha/"
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # 表示程式在近端執行
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"

</t>
<t tx="2014pythonE.20140410091619.2088">########################### 3. 建立主物件
class Buddha(object):
    _cp_config = {
    # if there is no utf-8 encoding, no Chinese input available
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # session timeout is 60 minutes
    'tools.sessions.timeout' : 60
    }
    
    @others
    #index.exposed = True

</t>
<t tx="2014pythonE.20140410091619.2093">@cherrypy.expose
def content(self, path=None, filename=None, *args, **kwargs):
    try:
        css_setup = '''
&lt;style type="text/css"&gt;
  body {
    line-height: 200%;
    }
&lt;/style&gt;
'''
        order = 0
        realpath = _curdir + file_location+path
        menu = ""
        mylist = self.walkdir()
        for i in range(len(mylist)):
            list_element = mylist[i]
            if filename in list_element:
                order = i
        total = len(mylist)
        if order == 0:
            # first page
            num = 1
            menu= "&lt;a href=\"/\"&gt;Index&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=\"/content?path="+str(mylist[num][0])+"&amp;filename="+str(mylist[num][1])+"\"&gt;Next&lt;/a&gt;"
        elif order == total-1:
            # last page
            num = total-2
            menu= "&lt;a href=\"/content?path="+str(mylist[num][0])+"&amp;filename="+str(mylist[num][1])+"\"&gt;Previous&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=\"/\"&gt;Index&lt;/a&gt;"
        else:
            # in between
            menu = "&lt;a href=\"/content?path="+str(mylist[order-1][0])+"&amp;filename="+str(mylist[order-1][1])+"\"&gt;Previous&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=\"/\"&gt;Index&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=\"/content?path="+str(mylist[order+1][0])+"&amp;filename="+str(mylist[order+1][1])+"\"&gt;Next&lt;/a&gt;"
        with open(realpath+"/"+filename, encoding="utf-8") as content_file:
            content = content_file.read()
        return css_setup+menu+"&lt;br /&gt;&lt;p&gt;&lt;div&gt;"+content+"&lt;/div&gt;&lt;/p&gt;&lt;br /&gt;"+menu+"&lt;br /&gt;"
    except:
        raise cherrypy.HTTPRedirect("/")
</t>
<t tx="2014pythonE.20140410091619.2094">@cherrypy.expose
def default(self, attr='default', *args, **kwargs):
    raise cherrypy.HTTPRedirect("/")
</t>
<t tx="2014pythonE.20140410091619.2356">def __init__(self):
    # hope to create downloads, images and tmp directories　
    if not os.path.isdir(download_root_dir+"downloads"):
        try:
            os.makedirs(download_root_dir+"downloads")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"images"):
        try:
            os.makedirs(download_root_dir+"images")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"tmp"):
        try:
            os.makedirs(download_root_dir+"tmp")
        except:
            print("mkdir error")


</t>
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
<t tx="2014pythonE.20140410091619.2358">def walkdir(self):
    realpath = _curdir + file_location
    # (path, title) and the title is the first line of file
    mylist = []
    if os.path.isfile(data_dir+"/filelist.txt"):
        # get mylist from filelist.txt
        with open(data_dir+"/filelist.txt", encoding="utf-8") as json_file:
            mylist = json.load(json_file)
    else:
        # walk directory and save filelist.txt
        writefile = open(data_dir+"/filelist.txt", "w", encoding="utf-8")
        for (path, dirs, files) in os.walk(realpath):
            files_sorted = sorted(files)
            for num in range(len(files_sorted)):
                file = open(path+"/"+files_sorted[num], encoding="utf-8")
                title = file.readline()
                filename = files_sorted[num]
                # this is not a good way to cut path, but works at this moment
                mylist.append((path.replace(realpath, ""), filename, title))
        writefile.write(json.dumps(mylist))
        file.close()
        writefile.close()
    # save content of mylist into data file
    return mylist
</t>
<t tx="2014pythonE.20140411082259.1644">目前在 PC Chrome 使用最佳, 可以放大畫面, 然後頁面會配合重整, 在 ipad air 中的 Chrome 則無法達到相同的功能.</t>
<t tx="amd.20151104220945.1">2015.11.04 開始進行

將原先的 @file 改為 @clean, 但是必須在 Leo Editor 5.1 版之後才可適用</t>
<t tx="amd.20151104231935.1">利用 buddha At mde 登記</t>
<t tx="no28.20140419141724.1982">@cherrypy.expose
def index(self, item_per_page=10, page=1, *args, **kwargs):
    outstring = ""
    # we need to walk the directory to get all the file names
    mylist = self.walkdir()
    total = len(mylist)
    '''
    # 原先無分頁傳送
    for num in range(total):
        outstring += "&lt;a href=\"/content?path="+str(mylist[num][0])+"&amp;filename="+str(mylist[num][1])+"\"&gt;"+str(mylist[num][2])+"&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;"
    return outstring
    '''
    # 準備改為分頁版本
    total_rows = len(mylist)
    totalpage = math.ceil(total_rows/int(item_per_page))
    starti = int(item_per_page) * (int(page) - 1) + 1
    endi = starti + int(item_per_page) - 1
    notlast = False
    if total_rows &gt; 0:
        outstring += "&lt;br /&gt;"
        if (int(page) * int(item_per_page)) &lt; total_rows:
            notlast = True
        if int(page) &gt; 1:
            outstring += "&lt;a href='"
            outstring += "/?page=1&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;&lt;&lt;&lt;/a&gt; "
            page_num = int(page) - 1
            outstring += "&lt;a href='"
            outstring += "/?page="+str(page_num)+"&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;Previous&lt;/a&gt; "
        span = 10
        for index in range(int(page)-span, int(page)+span):
            if index&gt;= 0 and index&lt; totalpage:
                page_now = index + 1 
                if page_now == int(page):
                    outstring += "&lt;font size='+1' color='red'&gt;"+str(page)+" &lt;/font&gt;"
                else:
                    outstring += "&lt;a href='"
                    outstring += "/?page="+str(page_now)+"&amp;amp;item_per_page="+str(item_per_page)
                    outstring += "'&gt;"+str(page_now)+"&lt;/a&gt; "

        if notlast == True:
            nextpage = int(page) + 1
            outstring += " &lt;a href='"
            outstring += "/?page="+str(nextpage)+"&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;Next&lt;/a&gt;"
            outstring += " &lt;a href='"
            outstring += "/?page="+str(totalpage)+"&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;&gt;&gt;&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;"
        if (int(page) * int(item_per_page)) &lt; total_rows:
            notlast = True
            outstring += access_list(mylist, starti, endi)+"&lt;br /&gt;"
        else:
            outstring += "&lt;br /&gt;&lt;br /&gt;"
            outstring += access_list(mylist, starti, total_rows)+"&lt;br /&gt;"
        if int(page) &gt; 1:
            outstring += "&lt;a href='"
            outstring += "/?page=1&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;&lt;&lt;&lt;/a&gt; "
            page_num = int(page) - 1
            outstring += "&lt;a href='"
            outstring += "/?page="+str(page_num)+"&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;Previous&lt;/a&gt; "
        span = 10
        for index in range(int(page)-span, int(page)+span):
            if index &gt;=0 and index &lt; totalpage:
                page_now = index + 1
                if page_now == int(page):
                    outstring += "&lt;font size='+1' color='red'&gt;"+str(page)+" &lt;/font&gt;"
                else:
                    outstring += "&lt;a href='"
                    outstring += "/?page="+str(page_now)+"&amp;amp;item_per_page="+str(item_per_page)
                    outstring += "'&gt;"+str(page_now)+"&lt;/a&gt; "
        if notlast == True:
            nextpage = int(page) + 1
            outstring += " &lt;a href='"
            outstring += "/?page="+str(nextpage)+"&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;Next&lt;/a&gt;"
            outstring += " &lt;a href='"
            outstring += "/?page="+str(totalpage)+"&amp;amp;item_per_page="+str(item_per_page)
            outstring += "'&gt;&gt;&gt;&lt;/a&gt;"
    else:
        outstring += "no data!"
        
    return outstring
</t>
<t tx="no28.20140419141724.1984">def access_list(mylist, starti, endi):
    outstring = ""
    for num in range(int(starti)-1, int(endi)):
        outstring += "&lt;a href=\"/content?path="+str(mylist[num][0])+"&amp;filename="+str(mylist[num][1])+"\"&gt;"+str(mylist[num][2])+"&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;"
    return outstring
</t>
</tnodes>
</leo_file>
