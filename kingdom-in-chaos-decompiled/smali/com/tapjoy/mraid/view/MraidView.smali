.class public Lcom/tapjoy/mraid/view/MraidView;
.super Landroid/webkit/WebView;
.source "MraidView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/MraidView$7;,
        Lcom/tapjoy/mraid/view/MraidView$MraidHTTPTask;,
        Lcom/tapjoy/mraid/view/MraidView$ScrollEater;,
        Lcom/tapjoy/mraid/view/MraidView$NewLocationReciever;,
        Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;,
        Lcom/tapjoy/mraid/view/MraidView$OrientationThread;,
        Lcom/tapjoy/mraid/view/MraidView$TimeOut;,
        Lcom/tapjoy/mraid/view/MraidView$Action;,
        Lcom/tapjoy/mraid/view/MraidView$customCloseState;,
        Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;,
        Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final AD_PATH:Ljava/lang/String; = "AD_PATH"

.field protected static final BACKGROUND_ID:I = 0x65

.field private static final CURRENT_FILE:Ljava/lang/String; = "_current_file"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field private static final ERROR_ACTION:Ljava/lang/String; = "action"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "message"

.field private static final EXPAND_PROPERTIES:Ljava/lang/String; = "expand_properties"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static final MESSAGE_CLOSE:I = 0x3e9

.field private static final MESSAGE_EXPAND:I = 0x3ec

.field private static final MESSAGE_HIDE:I = 0x3ea

.field private static final MESSAGE_OPEN:I = 0x3ee

.field private static final MESSAGE_PLAY_AUDIO:I = 0x3f0

.field private static final MESSAGE_PLAY_VIDEO:I = 0x3ef

.field private static final MESSAGE_RAISE_ERROR:I = 0x3f1

.field private static final MESSAGE_RESIZE:I = 0x3e8

.field private static final MESSAGE_RESIZE_ORIENTATION:I = 0x3f2

.field private static final MESSAGE_SEND_EXPAND_CLOSE:I = 0x3ed

.field private static final MESSAGE_SHOW:I = 0x3eb

.field public static final MRAID_ID:I = 0x66

.field private static final NO_CONNECTION_HTML:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>"

.field protected static final PLACEHOLDER_ID:I = 0x64

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static final RESIZE_ALLOWOFFSCREEN:Ljava/lang/String; = "resize_allowOffScreen"

.field private static final RESIZE_CUSTOMCLOSEPOSITION:Ljava/lang/String; = "resize_customClosePostition"

.field private static final RESIZE_HEIGHT:Ljava/lang/String; = "resize_height"

.field private static final RESIZE_WIDTH:Ljava/lang/String; = "resize_width"

.field private static final RESIZE_X:Ljava/lang/String; = "resize_x"

.field private static final RESIZE_Y:Ljava/lang/String; = "resize_y"

.field private static final TAG:Ljava/lang/String; = "MRAIDView"

.field private static attrs:[I

.field private static mScriptPath:Ljava/lang/String;

.field private static player:Lcom/tapjoy/mraid/util/MraidPlayer;

.field private static final videoFormats:[Ljava/lang/String;


# instance fields
.field private bGotLayoutParams:Z

.field private bKeyboardOut:Z

.field private bPageFinished:Z

.field private closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field private ctx:Landroid/content/Context;

.field private initialExpandUrl:Ljava/lang/String;

.field private initialLoadUrl:Z

.field private isMraid:Z

.field private lastScreenHeight:I

.field private lastScreenWidth:I

.field private mContentViewHeight:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDefaultX:I

.field private mDefaultY:I

.field private mDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mInitLayoutHeight:I

.field private mInitLayoutWidth:I

.field private mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

.field private mLocalFilePath:Ljava/lang/String;

.field private mTimeOut:Lcom/tapjoy/mraid/view/MraidView$TimeOut;

.field private mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

.field private mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field mWebChromeClient:Landroid/webkit/WebChromeClient;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field private orientationThread:Ljava/lang/Thread;

.field private originalRequestedOrientation:I

.field private placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

.field private progressBar:Landroid/widget/ProgressBar;

.field private final registeredProtocols:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoRelativeLayout:Landroid/widget/RelativeLayout;

.field private videoView:Landroid/widget/VideoView;

.field private videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private viewDetached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 112
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->attrs:[I

    .line 152
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const-string v1, ".mpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->videoFormats:[Ljava/lang/String;

    return-void

    .line 112
    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 155
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 159
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->initialExpandUrl:Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->initialLoadUrl:Z

    .line 161
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 184
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    .line 201
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 202
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 204
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 205
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 670
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    .line 960
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1103
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 258
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    .line 259
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 611
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 159
    iput-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->initialExpandUrl:Ljava/lang/String;

    .line 160
    iput-boolean v7, p0, Lcom/tapjoy/mraid/view/MraidView;->initialLoadUrl:Z

    .line 161
    iput-boolean v5, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 184
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 198
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    .line 201
    iput v5, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 202
    iput v5, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 204
    iput-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 205
    iput-boolean v5, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 670
    new-instance v3, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    .line 960
    new-instance v3, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v3, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1103
    new-instance v3, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v3, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 612
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 613
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView;->attrs:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 614
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 615
    .local v2, "w":I
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 616
    .local v1, "h":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 617
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v3, v2, v1}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    .line 618
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 619
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tapjoy/mraid/listener/MraidViewListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 155
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 159
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->initialExpandUrl:Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->initialLoadUrl:Z

    .line 161
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 184
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    .line 201
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 202
    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 204
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 205
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 670
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    .line 960
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1103
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 228
    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    .line 229
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    .line 230
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    .line 231
    return-void
.end method

.method static synthetic access$001(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeWindow()V

    return-void
.end method

.method static synthetic access$101(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tapjoy/mraid/view/MraidView;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView;->doExpand(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I

    return p1
.end method

.method static synthetic access$1302(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I

    return p1
.end method

.method static synthetic access$1400(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/controller/Utility;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView;->getWebResourceResponseFromCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tapjoy/mraid/view/MraidView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Landroid/widget/VideoView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->progressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/tapjoy/mraid/view/MraidView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->checkForOrientationChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView;->repositionCloseButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tapjoy/mraid/view/MraidView;)F
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    return v0
.end method

.method static synthetic access$700(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/mraid/view/MraidView;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeResized()V

    return-void
.end method

.method private changeContentArea(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Landroid/widget/FrameLayout;
    .locals 13
    .param p1, "d"    # Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 849
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 851
    .local v2, "contentView":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 852
    .local v7, "parent":Landroid/view/ViewGroup;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v10, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 854
    .local v4, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 855
    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 856
    const/4 v5, 0x0

    .line 857
    .local v5, "index":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 858
    .local v3, "count":I
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 859
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-ne v9, p0, :cond_1

    .line 862
    :cond_0
    iput v5, p0, Lcom/tapjoy/mraid/view/MraidView;->mIndex:I

    .line 863
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 864
    .local v8, "placeHolder":Landroid/widget/FrameLayout;
    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 865
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v10

    invoke-direct {v6, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 867
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v8, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 868
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 869
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 870
    .local v0, "backGround":Landroid/widget/FrameLayout;
    new-instance v9, Lcom/tapjoy/mraid/view/MraidView$3;

    invoke-direct {v9, p0}, Lcom/tapjoy/mraid/view/MraidView$3;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 877
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 880
    .local v1, "bgfl":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x65

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 881
    iget v9, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v10, p1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v0, v9, v10, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 882
    invoke-virtual {v0, p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    return-object v0

    .line 858
    .end local v0    # "backGround":Landroid/widget/FrameLayout;
    .end local v1    # "bgfl":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "placeHolder":Landroid/widget/FrameLayout;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private checkForOrientationChange()V
    .locals 5

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1425
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1426
    .local v1, "screenWidth":I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1431
    .local v0, "screenHeight":I
    iget v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    if-eq v0, v3, :cond_3

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-eq v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v3, v4, :cond_3

    .line 1443
    :cond_2
    const-string v3, "top-right"

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/tapjoy/mraid/view/MraidView;->resizeOrientation(IILjava/lang/String;Z)V

    .line 1446
    :cond_3
    return-void
.end method

.method private static checkForVideo(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1691
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->videoFormats:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1692
    .local v1, "i":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1694
    .end local v1    # "i":Ljava/lang/String;
    :goto_1
    return v4

    .line 1691
    .restart local v1    # "i":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1694
    .end local v1    # "i":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private closeResized()V
    .locals 4

    .prologue
    .line 940
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 941
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v1}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResizeClose()Z

    .line 944
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "injection":Ljava/lang/String;
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeResized: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 953
    const-string v1, "top-right"

    invoke-direct {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->repositionCloseButton(Ljava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetLayout()V

    .line 955
    return-void
.end method

.method private closeWindow()V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v1}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onClose()Z

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .line 837
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 838
    return-void
.end method

.method private doExpand(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 891
    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v7, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v6, v7, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    const-string v6, "expand_dimensions"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 894
    .local v2, "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    const-string v6, "expand_url"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 895
    .local v5, "url":Ljava/lang/String;
    const-string v6, "expand_properties"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;

    .line 896
    .local v4, "p":Lcom/tapjoy/mraid/controller/Abstract$Properties;
    invoke-static {v5}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 897
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 899
    :cond_2
    invoke-direct {p0, v2}, Lcom/tapjoy/mraid/view/MraidView;->changeContentArea(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 900
    .local v0, "backGround":Landroid/widget/FrameLayout;
    iget-boolean v6, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useBackground:Z

    if-eqz v6, :cond_3

    .line 901
    iget v6, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundColor:I

    iget v7, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundOpacity:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x10000000

    mul-int/2addr v7, v8

    or-int v1, v6, v7

    .line 903
    .local v1, "color":I
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 905
    .end local v1    # "color":I
    :cond_3
    iget-boolean v6, v4, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useCustomClose:Z

    if-nez v6, :cond_4

    .line 906
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    .line 908
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "window.mraidview.fireChangeEvent({ state: \'expanded\', size: { width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    int-to-float v7, v7

    iget v8, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x:0,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y:0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " });"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "injection":Ljava/lang/String;
    const-string v6, "MRAIDView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doExpand: injection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 923
    sget-object v6, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 930
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->checkForOrientationChange()V

    .line 932
    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v6, :cond_0

    .line 933
    iget-object v6, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v6}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onExpand()Z

    goto/16 :goto_0
.end method

.method private getContentViewHeight()I
    .locals 3

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1459
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1460
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1462
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getWebResourceResponseFromCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1087
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tapjoy/TapjoyCache;->getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCachedAssetData;

    move-result-object v0

    .line 1088
    .local v0, "cachedData":Lcom/tapjoy/TapjoyCachedAssetData;
    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-object v2

    .line 1093
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v1, "data":Ljava/io/FileInputStream;
    new-instance v3, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCachedAssetData;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 1095
    .end local v1    # "data":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initAndPlayVideo(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1682
    new-instance v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    invoke-direct {v6}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;-><init>()V

    .line 1683
    .local v6, "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    .line 1684
    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    .line 1685
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    .line 1686
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    .line 1687
    const-string v7, "fullscreen"

    const-string v8, "exit"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/tapjoy/mraid/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    return-void
.end method

.method private isRegisteredProtocol(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 362
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "scheme":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v3

    .line 366
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private repositionCloseButton(Ljava/lang/String;)V
    .locals 3
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 632
    .local v0, "injection":Ljava/lang/String;
    const-string v1, "top-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    .line 660
    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    .line 661
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_2
    const-string v1, "top-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_1

    .line 640
    :cond_3
    const-string v1, "top-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 641
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = 1"

    goto :goto_1

    .line 644
    :cond_4
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 645
    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_1

    .line 648
    :cond_5
    const-string v1, "bottom-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 649
    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    goto :goto_1

    .line 651
    :cond_6
    const-string v1, "bottom-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 652
    const-string v0, "document.getElementById(\"closeButton\").style.left = 1;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_1

    .line 655
    :cond_7
    const-string v1, "bottom-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    const-string v0, "document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 -18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_1

    .line 663
    :cond_8
    const-string v1, "MRAIDView"

    const-string v2, "Reposition of close button failed."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 2

    .prologue
    .line 1938
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1939
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bGotLayoutParams:Z

    if-eqz v1, :cond_0

    .line 1940
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1941
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1943
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1944
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 1945
    return-void
.end method

.method private declared-synchronized setScriptPath()V
    .locals 3

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " paths"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView;->mScriptPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->mScriptPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    const-string v1, "/js/mraid.js"

    const-string v2, "js/mraid.js"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/controller/Utility;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->mScriptPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    :cond_0
    monitor-exit p0

    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1450
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->reset()V

    .line 584
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 585
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1573
    return-void
.end method

.method protected declared-synchronized closeExpanded()V
    .locals 4

    .prologue
    .line 1481
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetContents()V

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "injection":Ljava/lang/String;
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeExpanded: injection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1492
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    .line 1493
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1494
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1495
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    .line 1497
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->originalRequestedOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    monitor-exit p0

    return-void

    .line 1481
    .end local v0    # "injection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "openedFrame"    # Landroid/view/View;

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1509
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    .line 1510
    return-void
.end method

.method public createCloseImageButton()V
    .locals 3

    .prologue
    .line 286
    const-string v0, "window.mraidview.createCss();"

    .line 287
    .local v0, "injection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 288
    const-string v1, "MRAIDView"

    const-string v2, "Creating close button."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public deregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    return-void
.end method

.method public expand(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Lcom/tapjoy/mraid/controller/Abstract$Properties;)V
    .locals 4
    .param p1, "dimensions"    # Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    .param p2, "URL"    # Ljava/lang/String;
    .param p3, "properties"    # Lcom/tapjoy/mraid/controller/Abstract$Properties;

    .prologue
    .line 1610
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1611
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1612
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "expand_dimensions"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1613
    const-string v2, "expand_url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    const-string v2, "expand_properties"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1615
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1616
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1617
    return-void
.end method

.method public getCloseButtonState()Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;
    .locals 2

    .prologue
    .line 2090
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    if-eqz v0, :cond_0

    .line 2091
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    .line 2092
    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/mraid/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    .line 2093
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->player:Lcom/tapjoy/mraid/util/MraidPlayer;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method public hasMraidTag(Ljava/lang/String;)Z
    .locals 5
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v4, "<\\s*script[^>]+ormma\\.js"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 437
    .local v2, "ormma":Ljava/util/regex/Pattern;
    const-string v4, "<\\s*script[^>]+mraid\\.js"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 439
    .local v0, "mraid":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 440
    .local v1, "mraidMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 442
    .local v3, "ormmaMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1580
    return-void
.end method

.method public initialize()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1282
    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    .line 1283
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setScrollContainer(Z)V

    .line 1284
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setVerticalScrollBarEnabled(Z)V

    .line 1285
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setHorizontalScrollBarEnabled(Z)V

    .line 1286
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/tapjoy/mraid/view/MraidView$ScrollEater;

    invoke-direct {v4, p0}, Lcom/tapjoy/mraid/view/MraidView$ScrollEater;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1288
    invoke-virtual {p0, v5}, Lcom/tapjoy/mraid/view/MraidView;->setBackgroundColor(I)V

    .line 1289
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1290
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1293
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1294
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mDensity:F

    .line 1296
    iput-boolean v5, p0, Lcom/tapjoy/mraid/view/MraidView;->bPageFinished:Z

    .line 1298
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1300
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1303
    :cond_0
    new-instance v3, Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/tapjoy/mraid/controller/Utility;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    .line 1305
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    const-string v4, "MRAIDUtilityControllerBridge"

    invoke-virtual {p0, v3, v4}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1310
    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1311
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->setScriptPath()V

    .line 1313
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    .line 1315
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1320
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 1321
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 1323
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    iput v3, p0, Lcom/tapjoy/mraid/view/MraidView;->originalRequestedOrientation:I

    .line 1324
    return-void
.end method

.method public injectMraidJavaScript(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 384
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMraid()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    return v0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->bPageFinished:Z

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 450
    if-nez p2, :cond_0

    .line 546
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    .local v8, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "<html>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 457
    .local v10, "htmlPresent":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 459
    const-string v1, "mraid.js"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 460
    .local v14, "start":I
    if-gez v14, :cond_1

    .line 461
    const-string v1, "ormma.js"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 464
    :cond_1
    move v12, v14

    .line 465
    .local v12, "send":I
    move v13, v14

    .line 471
    .local v13, "sstart":I
    if-lez v14, :cond_b

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->hasMraidTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->isMraid:Z

    .line 476
    move v11, v14

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_2

    .line 477
    add-int/lit8 v1, v11, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 478
    move v13, v11

    .line 482
    :cond_2
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 483
    add-int v1, v14, v11

    add-int v2, v14, v11

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 485
    add-int v1, v11, v14

    add-int/lit8 v12, v1, 0x2

    .line 496
    :cond_3
    :goto_3
    if-gez v10, :cond_9

    .line 498
    const-string v1, "MRAIDView"

    const-string v2, "wrapping fragment"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "<html>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v1, "<head>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v1, "<meta name=\'viewport\' content=\'user-scalable=no initial-scale=1.0\' />"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const-string v1, "<title>Advertisement</title>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    const-string v1, "</head>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const-string v1, "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    const-string v1, "<div align=\"center\"> "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v1, "<script type=text/javascript>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v1, "mraid.js"

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 513
    .local v7, "bigString":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 514
    const-string v1, "js/mraid.js"

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 517
    :cond_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    const-string v1, "</script>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    .end local v7    # "bigString":Ljava/lang/String;
    :cond_5
    :goto_4
    const-string v1, "MRAIDView"

    const-string v2, "injected js/mraid.js"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v11    # "i":I
    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-super/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    .restart local v11    # "i":I
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_1

    .line 488
    :cond_7
    add-int v1, v14, v11

    add-int v2, v14, v11

    add-int/lit8 v2, v2, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "</script>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 490
    add-int v1, v11, v14

    add-int/lit8 v12, v1, 0x9

    .line 491
    goto/16 :goto_3

    .line 482
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 521
    :cond_9
    const-string v1, "<head>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 522
    .local v9, "headStart":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_5

    .line 524
    const-string v1, "mraid.js"

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 527
    .restart local v7    # "bigString":Ljava/lang/String;
    if-nez v7, :cond_a

    .line 528
    const-string v1, "js/mraid.js"

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 531
    :cond_a
    const/4 v1, 0x0

    add-int/lit8 v2, v9, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    const-string v1, "<script type=\'text/javascript\'>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    const-string v1, "</script>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    add-int/lit8 v1, v9, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 541
    .end local v7    # "bigString":Ljava/lang/String;
    .end local v9    # "headStart":I
    .end local v11    # "i":I
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->ctx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$1;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/mraid/view/MraidView$1;-><init>(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public loadUrlStandard(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1993
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bGotLayoutParams:Z

    if-nez v1, :cond_0

    .line 1994
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1995
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutHeight:I

    .line 1996
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mInitLayoutWidth:I

    .line 1997
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bGotLayoutParams:Z

    .line 2000
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 2004
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2006
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;

    invoke-direct {v2, p0}, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 2007
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2010
    :cond_2
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2011
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2068
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->viewDetached:Z

    .line 2069
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    .line 2074
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 2075
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 2077
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_1

    .line 2078
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2086
    return-void

    .line 2080
    :catch_0
    move-exception v0

    .line 2082
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1959
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    .line 1960
    .local v1, "state":Z
    iget-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    if-ltz v2, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1964
    const/4 v1, 0x1

    .line 1965
    const-string v0, "window.mraidview.fireChangeEvent({ keyboardState: true});"

    .line 1966
    .local v0, "injection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1968
    .end local v0    # "injection":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    if-ltz v2, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1971
    const/4 v1, 0x0

    .line 1972
    const-string v0, "window.mraidview.fireChangeEvent({ keyboardState: false});"

    .line 1973
    .restart local v0    # "injection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 1975
    .end local v0    # "injection":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    if-gez v2, :cond_2

    .line 1976
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mContentViewHeight:I

    .line 1978
    :cond_2
    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->bKeyboardOut:Z

    .line 1979
    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "back"    # Z
    .param p3, "forward"    # Z
    .param p4, "refresh"    # Z

    .prologue
    .line 1633
    const/4 v1, 0x0

    .line 1634
    .local v1, "isVideo":Z
    const/4 v3, 0x0

    .line 1637
    .local v3, "videoURL":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/mraid/view/MraidView;->checkForVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1639
    const/4 v1, 0x1

    .line 1640
    move-object v3, p1

    .line 1661
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1663
    invoke-direct {p0, v3}, Lcom/tapjoy/mraid/view/MraidView;->initAndPlayVideo(Ljava/lang/String;)V

    .line 1678
    :goto_1
    return-void

    .line 1644
    :cond_1
    new-instance v4, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v4}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    invoke-virtual {v4, p1}, Lcom/tapjoy/TapjoyURLConnection;->getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v2

    .line 1646
    .local v2, "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "redirect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1652
    iget-object v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->checkForVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1654
    const/4 v1, 0x1

    .line 1655
    iget-object v3, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    goto :goto_0

    .line 1668
    .end local v2    # "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    :cond_2
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mraid Browser open:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1670
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "extra_url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string v4, "open_show_back"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1672
    const-string v4, "open_show_forward"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1673
    const-string v4, "open_show_refresh"

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1674
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1675
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "POI"    # Ljava/lang/String;
    .param p2, "fullscreen"    # Z

    .prologue
    .line 1716
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening Map Url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1718
    invoke-static {p1}, Lcom/tapjoy/mraid/util/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1719
    if-eqz p2, :cond_0

    .line 1721
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1723
    .local v1, "mapIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    .end local v1    # "mapIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1725
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "autoPlay"    # Z
    .param p3, "controls"    # Z
    .param p4, "loop"    # Z
    .param p5, "position"    # Z
    .param p6, "startStyle"    # Ljava/lang/String;
    .param p7, "stopStyle"    # Ljava/lang/String;

    .prologue
    .line 1765
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    .line 1767
    .local v0, "properties":Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1770
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1772
    .local v8, "data":Landroid/os/Bundle;
    const-string v1, "action"

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_AUDIO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v1, "expand_url"

    invoke-virtual {v8, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v1, "player_properties"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1776
    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1778
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1779
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1780
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1781
    :catch_0
    move-exception v9

    .line 1782
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1785
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1786
    .local v11, "msg":Landroid/os/Message;
    invoke-virtual {v11, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1787
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 1733
    const-string v3, "player_properties"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 1735
    .local v1, "properties":Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const-string v3, "expand_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1736
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v0

    .line 1737
    .local v0, "audioPlayer":Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 1738
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1739
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1740
    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->playAudio()V

    .line 1741
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "audioMuted"    # Z
    .param p3, "autoPlay"    # Z
    .param p4, "controls"    # Z
    .param p5, "loop"    # Z
    .param p6, "d"    # Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    .param p7, "startStyle"    # Ljava/lang/String;
    .param p8, "stopStyle"    # Ljava/lang/String;

    .prologue
    .line 1868
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 1869
    .local v12, "msg":Landroid/os/Message;
    new-instance v1, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v1}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    .line 1870
    .local v1, "properties":Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const/4 v5, 0x0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1872
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1873
    .local v9, "data":Landroid/os/Bundle;
    const-string v2, "expand_url"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    const-string v2, "action"

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_VIDEO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v2, "player_properties"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1878
    if-eqz p6, :cond_0

    .line 1879
    const-string v2, "expand_dimensions"

    move-object/from16 v0, p6

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1881
    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1883
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1884
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual {v11, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1885
    const/high16 v2, 0x10000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1886
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1894
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1887
    :catch_0
    move-exception v10

    .line 1888
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1890
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    if-eqz p6, :cond_1

    .line 1891
    invoke-virtual {v12, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1892
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1793
    const-string v7, "player_properties"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    .line 1795
    .local v4, "properties":Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    const-string v7, "expand_dimensions"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    .line 1796
    .local v2, "d":Lcom/tapjoy/mraid/controller/Abstract$Dimensions;
    const-string v7, "expand_url"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1798
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v6

    .line 1799
    .local v6, "videoPlayer":Lcom/tapjoy/mraid/util/MraidPlayer;
    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    .line 1801
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v8, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1803
    .local v3, "fl":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1804
    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1805
    invoke-virtual {v6, v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1807
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1809
    .local v0, "backGround":Landroid/widget/FrameLayout;
    const/16 v7, 0x65

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1810
    iget v7, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v8, v2, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v0, v7, v8, v10, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1812
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1814
    .local v1, "contentView":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1818
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1819
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1821
    new-instance v7, Lcom/tapjoy/mraid/view/MraidView$6;

    invoke-direct {v7, p0}, Lcom/tapjoy/mraid/view/MraidView$6;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v6, v7}, Lcom/tapjoy/mraid/util/MraidPlayer;->setListener(Lcom/tapjoy/mraid/listener/Player;)V

    .line 1841
    invoke-virtual {v6}, Lcom/tapjoy/mraid/util/MraidPlayer;->playVideo()V

    .line 1842
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "strMsg"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2048
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2050
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2051
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string v2, "action"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2054
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2055
    return-void
.end method

.method public registerProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    return-void
.end method

.method public removeCloseImageButton()V
    .locals 3

    .prologue
    .line 292
    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"hidden\";"

    .line 293
    .local v0, "injection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 294
    const-string v1, "MRAIDView"

    const-string v2, "Removing close button."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 296
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    .line 248
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeExpanded()V

    .line 596
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->invalidate()V

    .line 597
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->deleteOldAds()V

    .line 598
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    .line 599
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetLayout()V

    .line 600
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mViewState:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->closeResized()V

    goto :goto_0
.end method

.method public resetContents()V
    .locals 6

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1903
    .local v1, "contentView":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1905
    .local v3, "placeHolder":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1907
    .local v0, "background":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1908
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1909
    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetLayout()V

    .line 1910
    if-eqz v3, :cond_0

    .line 1911
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1912
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 1913
    iget v4, p0, Lcom/tapjoy/mraid/view/MraidView;->mIndex:I

    invoke-virtual {v2, p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1914
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1915
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 1918
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public resize(IIIILjava/lang/String;Z)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "customClosePosition"    # Ljava/lang/String;
    .param p6, "allowOffScreen"    # Z

    .prologue
    .line 1536
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1537
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1538
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "resize_width"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1539
    const-string v2, "resize_height"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1540
    const-string v2, "resize_x"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1541
    const-string v2, "resize_y"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1542
    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1543
    const-string v2, "resize_customClosePostition"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1545
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1546
    return-void
.end method

.method public resizeOrientation(IILjava/lang/String;Z)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "customClosePosition"    # Ljava/lang/String;
    .param p4, "allowOffScreen"    # Z

    .prologue
    .line 1553
    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenWidth:I

    .line 1554
    iput p2, p0, Lcom/tapjoy/mraid/view/MraidView;->lastScreenHeight:I

    .line 1556
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeOrientation to dimensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1559
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1560
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "resize_width"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1561
    const-string v2, "resize_height"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1562
    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1563
    const-string v2, "resize_customClosePostition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1565
    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1566
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2031
    invoke-super {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2017
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tapjoy/mraid/listener/MraidViewListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->mListener:Lcom/tapjoy/mraid/listener/MraidViewListener;

    .line 241
    return-void
.end method

.method public setMaxSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mUtilityController:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    .line 326
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 2
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Ljava/lang/String;

    .prologue
    .line 1698
    const/4 v0, -0x1

    .line 1700
    .local v0, "requestedOrientation":I
    if-nez p1, :cond_0

    .line 1701
    const-string v1, "landscape"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1703
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1704
    return-void

    .line 1701
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V
    .locals 2
    .param p1, "type"    # Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    .prologue
    .line 263
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->placement:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    .line 271
    :goto_0
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$OrientationThread;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    .line 276
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->orientationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 279
    :cond_2
    return-void

    .line 267
    :cond_3
    const-string v0, "MRAIDView"

    const-string v1, "Incorrect placement type."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1587
    return-void
.end method

.method public showCloseImageButton()V
    .locals 3

    .prologue
    .line 299
    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"visible\";"

    .line 300
    .local v0, "injection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 301
    const-string v1, "MRAIDView"

    const-string v2, "Showing close button."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->closeButtonState:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 303
    return-void
.end method

.method public videoPlaying()Z
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoViewCleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1241
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1244
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1245
    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->videoRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1251
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1254
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_2

    .line 1255
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;

    .line 1263
    iput-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1266
    if-eqz p0, :cond_3

    .line 1267
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1269
    :cond_3
    const-string v1, "javascript:try{Tapjoy.AdUnit.dispatchEvent(\'videoend\')}catch(e){}"

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 1270
    return-void

    .line 1257
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
