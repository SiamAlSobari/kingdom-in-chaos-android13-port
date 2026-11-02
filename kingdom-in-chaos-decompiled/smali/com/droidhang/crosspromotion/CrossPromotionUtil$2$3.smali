.class Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$3;
.super Ljava/lang/Object;
.source "CrossPromotionUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;


# direct methods
.method constructor <init>(Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/droidhang/crosspromotion/CrossPromotionUtil$2$3;->this$0:Lcom/droidhang/crosspromotion/CrossPromotionUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-static {}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->nOnExitGame()V

    .line 163
    return-void
.end method
