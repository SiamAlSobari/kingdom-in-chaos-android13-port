.class Lcom/droidhang/uicontrol/DHEditBox$2$1;
.super Ljava/lang/Object;
.source "DHEditBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/uicontrol/DHEditBox$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/uicontrol/DHEditBox$2;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/droidhang/uicontrol/DHEditBox$2;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1;->this$0:Lcom/droidhang/uicontrol/DHEditBox$2;

    iput-object p2, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 67
    iget-object v1, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1;->this$0:Lcom/droidhang/uicontrol/DHEditBox$2;

    iget-object v1, v1, Lcom/droidhang/uicontrol/DHEditBox$2;->val$glSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/droidhang/uicontrol/DHEditBox$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/droidhang/uicontrol/DHEditBox$2$1$1;-><init>(Lcom/droidhang/uicontrol/DHEditBox$2$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 78
    :cond_0
    return-void
.end method
