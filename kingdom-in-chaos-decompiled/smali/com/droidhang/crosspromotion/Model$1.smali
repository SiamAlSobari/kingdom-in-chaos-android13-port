.class final Lcom/droidhang/crosspromotion/Model$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/Model;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncHttpComplete(Z[B)V
    .locals 19
    .param p1, "succeed"    # Z
    .param p2, "bytes"    # [B

    .prologue
    .line 121
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "request applist success="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v9, ""

    .line 124
    .local v9, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const-string v16, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v9    # "jsonString":Ljava/lang/String;
    .local v10, "jsonString":Ljava/lang/String;
    :try_start_1
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "jsonString="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6

    .line 130
    const-string v15, "0"

    .line 131
    .local v15, "version":Ljava/lang/String;
    const/4 v14, 0x0

    .line 134
    .local v14, "status":I
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v16, "status"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 136
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "status = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->access$000()Landroid/app/Activity;

    move-result-object v16

    const-string v17, "crosspromotion"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 146
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    if-nez v14, :cond_2

    .line 147
    const-string v16, "ret"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "ret":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 149
    const-string v16, "CrossPromotion_Model"

    const-string v17, "304, parse jsonString in pref = null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 220
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "jsonString":Ljava/lang/String;
    .end local v12    # "ret":Ljava/lang/String;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "status":I
    .end local v15    # "version":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    goto :goto_0

    .line 137
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v10    # "jsonString":Ljava/lang/String;
    .restart local v14    # "status":I
    .restart local v15    # "version":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Lorg/json/JSONException;
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " parse jsonString exp ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 139
    .end local v10    # "jsonString":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonString":Ljava/lang/String;
    .restart local v12    # "ret":Ljava/lang/String;
    .restart local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "304, parse jsonString in pref ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_3
    new-instance v8, Lorg/json/JSONObject;

    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 183
    .end local v12    # "ret":Ljava/lang/String;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    const/4 v7, 0x0

    .line 185
    .local v7, "jsonArray":Lorg/json/JSONArray;
    :try_start_4
    const-string v16, "app"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    .line 190
    :goto_3
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_3

    .line 191
    const-string v16, "CrossPromotion_Model"

    const-string v17, "update cache"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->access$100()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 193
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    .line 195
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 196
    .local v11, "object":Lorg/json/JSONObject;
    new-instance v6, Lcom/droidhang/crosspromotion/Model$AppItem;

    invoke-direct {v6}, Lcom/droidhang/crosspromotion/Model$AppItem;-><init>()V

    .line 197
    .local v6, "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    const-string v16, "appid"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    .line 198
    const-string v16, "percent"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->percent:I

    .line 199
    const-string v16, "md5"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    .line 200
    const-string v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->url:Ljava/lang/String;

    .line 202
    iget-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->appid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/droidhang/crosspromotion/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    iget v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->percent:I

    move/from16 v16, v0

    if-lez v16, :cond_1

    iget-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/droidhang/crosspromotion/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    iget-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/droidhang/crosspromotion/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 208
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->access$100()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 193
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 157
    .end local v4    # "i":I
    .end local v6    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "object":Lorg/json/JSONObject;
    .restart local v12    # "ret":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 158
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "304, parse jsonString in pref exp ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 161
    .end local v10    # "jsonString":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v9    # "jsonString":Ljava/lang/String;
    .end local v12    # "ret":Ljava/lang/String;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonString":Ljava/lang/String;
    :cond_2
    :try_start_6
    const-string v16, "v"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 166
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "version ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 175
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 177
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v16, "ret"

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v16, "version"

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 167
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v2

    .line 168
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " parse jsonString exp ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 171
    .end local v10    # "jsonString":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    goto/16 :goto_0

    .line 186
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v9    # "jsonString":Ljava/lang/String;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v10    # "jsonString":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 187
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parse jsonArray exp ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 212
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v2

    .line 213
    .restart local v2    # "e":Lorg/json/JSONException;
    const-string v16, "CrossPromotion_Model"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "parse exp ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-static {}, Lcom/droidhang/crosspromotion/Model;->access$100()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/droidhang/crosspromotion/Model$AppItem;

    .line 218
    .restart local v6    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    iget-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/droidhang/crosspromotion/Model$AppItem;->md5:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/droidhang/crosspromotion/Model;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v6    # "item":Lcom/droidhang/crosspromotion/Model$AppItem;
    :cond_4
    move-object v9, v10

    .line 220
    .end local v10    # "jsonString":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    goto/16 :goto_0

    .line 126
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsonString":Ljava/lang/String;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "status":I
    .end local v15    # "version":Ljava/lang/String;
    .restart local v10    # "jsonString":Ljava/lang/String;
    :catch_6
    move-exception v2

    move-object v9, v10

    .end local v10    # "jsonString":Ljava/lang/String;
    .restart local v9    # "jsonString":Ljava/lang/String;
    goto/16 :goto_1
.end method
