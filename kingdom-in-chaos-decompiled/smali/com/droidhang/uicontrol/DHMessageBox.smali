.class public Lcom/droidhang/uicontrol/DHMessageBox;
.super Ljava/lang/Object;
.source "DHMessageBox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Lcom/droidhang/uicontrol/DHMessageBox;->onMessageBoxClose()V

    return-void
.end method

.method private static native onMessageBoxClose()V
.end method

.method public static showMessageBox(Landroid/opengl/GLSurfaceView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bt"    # Ljava/lang/String;

    .prologue
    .line 13
    new-instance v0, Lcom/droidhang/uicontrol/DHMessageBox$1;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidhang/uicontrol/DHMessageBox$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public static showMessageBox2(Landroid/opengl/GLSurfaceView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "bt1"    # Ljava/lang/String;
    .param p5, "bt2"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/droidhang/uicontrol/DHMessageBox$2;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/droidhang/uicontrol/DHMessageBox$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method
