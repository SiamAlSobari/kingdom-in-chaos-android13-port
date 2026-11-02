.class Lcom/umeng/analytics/a/k;
.super Lorg/json/JSONObject;
.source "LogBody.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/h;

.field final synthetic b:Lcom/umeng/analytics/a/j;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/j;Lcom/umeng/analytics/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Lcom/umeng/analytics/a/k;->b:Lcom/umeng/analytics/a/j;

    iput-object p2, p0, Lcom/umeng/analytics/a/k;->a:Lcom/umeng/analytics/a/h;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/umeng/analytics/a/k;->a:Lcom/umeng/analytics/a/h;

    invoke-interface {v0, p0}, Lcom/umeng/analytics/a/h;->b(Lorg/json/JSONObject;)V

    .line 220
    return-void
.end method
