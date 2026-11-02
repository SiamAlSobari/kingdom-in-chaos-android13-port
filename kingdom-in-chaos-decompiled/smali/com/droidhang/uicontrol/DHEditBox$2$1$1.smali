.class Lcom/droidhang/uicontrol/DHEditBox$2$1$1;
.super Ljava/lang/Object;
.source "DHEditBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/uicontrol/DHEditBox$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/droidhang/uicontrol/DHEditBox$2$1;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/droidhang/uicontrol/DHEditBox$2$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1$1;->this$1:Lcom/droidhang/uicontrol/DHEditBox$2$1;

    iput-object p2, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/droidhang/uicontrol/DHEditBox$2$1$1;->val$str:Ljava/lang/String;

    invoke-static {v0}, Lcom/droidhang/uicontrol/DHEditBox;->access$000(Ljava/lang/String;)V

    .line 74
    return-void
.end method
