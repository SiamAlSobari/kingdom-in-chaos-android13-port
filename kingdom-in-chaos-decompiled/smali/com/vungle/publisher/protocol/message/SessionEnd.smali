.class public final Lcom/vungle/publisher/protocol/message/SessionEnd;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/SessionEnd$Factory;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lcom/vungle/publisher/protocol/message/SessionStart;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/SessionEnd;->b:Lcom/vungle/publisher/protocol/message/SessionStart;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    :goto_0
    const-string v1, "end"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/SessionEnd;->a:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/vungle/publisher/protocol/message/SessionEnd;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v1, "end"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/SessionEnd;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/SessionEnd;->b:Lcom/vungle/publisher/protocol/message/SessionStart;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/message/SessionStart;->b()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
