.class public final Lcom/vungle/publisher/bu;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a([Lcom/vungle/publisher/cl;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vungle/publisher/cl;",
            ">([TT;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    if-eqz p0, :cond_0

    .line 195
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 196
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 197
    invoke-static {v3}, Lcom/vungle/publisher/bu;->a(Lcom/vungle/publisher/cl;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/vungle/publisher/cl;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    if-eqz p0, :cond_0

    .line 214
    invoke-interface {p0}, Lcom/vungle/publisher/cl;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 216
    :cond_0
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 89
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 90
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object v1

    .line 89
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 105
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    if-ne v1, v3, :cond_1

    .line 111
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 113
    if-eq v1, v2, :cond_0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 177
    new-array v0, v4, [Ljava/lang/String;

    .line 178
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 179
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 182
    :cond_1
    return-object v0
.end method
