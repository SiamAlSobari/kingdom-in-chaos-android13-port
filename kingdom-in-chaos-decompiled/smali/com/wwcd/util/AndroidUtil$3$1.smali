.class Lcom/wwcd/util/AndroidUtil$3$1;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Lcom/wwcd/util/DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wwcd/util/AndroidUtil$3;


# direct methods
.method constructor <init>(Lcom/wwcd/util/AndroidUtil$3;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$3$1;->this$0:Lcom/wwcd/util/AndroidUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$3$1;->this$0:Lcom/wwcd/util/AndroidUtil$3;

    iget-object v0, v0, Lcom/wwcd/util/AndroidUtil$3;->val$ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wwcd/util/AndroidUtil$3$1;->this$0:Lcom/wwcd/util/AndroidUtil$3;

    iget-object v1, v1, Lcom/wwcd/util/AndroidUtil$3;->val$dlurl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wwcd/util/AndroidUtil;->downloadApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    return-void
.end method
