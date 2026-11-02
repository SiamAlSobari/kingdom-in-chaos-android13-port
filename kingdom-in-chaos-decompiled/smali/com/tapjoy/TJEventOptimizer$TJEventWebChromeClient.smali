.class Lcom/tapjoy/TJEventOptimizer$TJEventWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "TJEventOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJEventOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TJEventWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEventOptimizer;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJEventOptimizer;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventWebChromeClient;->this$0:Lcom/tapjoy/TJEventOptimizer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJEventOptimizer;Lcom/tapjoy/TJEventOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJEventOptimizer;
    .param p2, "x1"    # Lcom/tapjoy/TJEventOptimizer$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/tapjoy/TJEventOptimizer$TJEventWebChromeClient;-><init>(Lcom/tapjoy/TJEventOptimizer;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JS CONSOLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method
