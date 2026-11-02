.class public Lcom/droidhang/uicontrol/DHEditBox;
.super Ljava/lang/Object;
.source "DHEditBox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/droidhang/uicontrol/DHEditBox;->onEditBoxClose(Ljava/lang/String;)V

    return-void
.end method

.method private static native onEditBoxClose(Ljava/lang/String;)V
.end method

.method public static showEditBox(Landroid/opengl/GLSurfaceView;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    .line 17
    new-instance v0, Lcom/droidhang/uicontrol/DHEditBox$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/droidhang/uicontrol/DHEditBox$1;-><init>(Landroid/app/Activity;Ljava/lang/String;ILandroid/opengl/GLSurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public static showEditBox2(Landroid/opengl/GLSurfaceView;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/droidhang/uicontrol/DHEditBox$2;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/droidhang/uicontrol/DHEditBox$2;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
