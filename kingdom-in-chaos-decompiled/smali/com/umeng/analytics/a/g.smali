.class Lcom/umeng/analytics/a/g;
.super Lorg/json/JSONObject;
.source "Header.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/f;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lcom/umeng/analytics/a/g;->a:Lcom/umeng/analytics/a/f;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/umeng/analytics/a/g;->a:Lcom/umeng/analytics/a/f;

    iget-object v0, v0, Lcom/umeng/analytics/a/f;->H:Lcom/umeng/analytics/a/r;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/a/r;->b(Lorg/json/JSONObject;)V

    .line 221
    return-void
.end method
