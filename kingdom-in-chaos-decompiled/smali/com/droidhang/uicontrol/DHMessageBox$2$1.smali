.class Lcom/droidhang/uicontrol/DHMessageBox$2$1;
.super Ljava/lang/Object;
.source "DHMessageBox.java"

# interfaces
.implements Lcom/wwcd/util/DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/uicontrol/DHMessageBox$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/uicontrol/DHMessageBox$2;


# direct methods
.method constructor <init>(Lcom/droidhang/uicontrol/DHMessageBox$2;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/droidhang/uicontrol/DHMessageBox$2$1;->this$0:Lcom/droidhang/uicontrol/DHMessageBox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/droidhang/uicontrol/DHMessageBox$2$1;->this$0:Lcom/droidhang/uicontrol/DHMessageBox$2;

    iget-object v0, v0, Lcom/droidhang/uicontrol/DHMessageBox$2;->val$glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/droidhang/uicontrol/DHMessageBox$2$1$1;

    invoke-direct {v1, p0}, Lcom/droidhang/uicontrol/DHMessageBox$2$1$1;-><init>(Lcom/droidhang/uicontrol/DHMessageBox$2$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
