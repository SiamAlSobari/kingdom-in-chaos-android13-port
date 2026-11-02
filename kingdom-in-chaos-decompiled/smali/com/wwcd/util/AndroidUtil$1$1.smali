.class Lcom/wwcd/util/AndroidUtil$1$1;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Lcom/wwcd/util/DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wwcd/util/AndroidUtil$1;


# direct methods
.method constructor <init>(Lcom/wwcd/util/AndroidUtil$1;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$1$1;->this$0:Lcom/wwcd/util/AndroidUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$1$1;->this$0:Lcom/wwcd/util/AndroidUtil$1;

    iget-object v0, v0, Lcom/wwcd/util/AndroidUtil$1;->val$ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wwcd/util/AndroidUtil$1$1;->this$0:Lcom/wwcd/util/AndroidUtil$1;

    iget-object v1, v1, Lcom/wwcd/util/AndroidUtil$1;->val$dlurl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wwcd/util/AndroidUtil;->downloadAppFromMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 193
    return-void
.end method
