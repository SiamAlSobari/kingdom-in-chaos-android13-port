.class Lcom/wwcd/util/AndroidUtil$2$1;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Lcom/wwcd/util/DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wwcd/util/AndroidUtil$2;


# direct methods
.method constructor <init>(Lcom/wwcd/util/AndroidUtil$2;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$2$1;->this$0:Lcom/wwcd/util/AndroidUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$2$1;->this$0:Lcom/wwcd/util/AndroidUtil$2;

    iget-object v0, v0, Lcom/wwcd/util/AndroidUtil$2;->val$dlurl:Ljava/lang/String;

    invoke-static {v0}, Lcom/wwcd/util/AndroidUtil;->copyRecordToSdCard(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$2$1;->this$0:Lcom/wwcd/util/AndroidUtil$2;

    iget-object v0, v0, Lcom/wwcd/util/AndroidUtil$2;->val$ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wwcd/util/AndroidUtil$2$1;->this$0:Lcom/wwcd/util/AndroidUtil$2;

    iget-object v1, v1, Lcom/wwcd/util/AndroidUtil$2;->val$dlurl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wwcd/util/AndroidUtil;->downloadAppFromMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 209
    return-void
.end method
