tmp = """
<table border>
<tr id = "marchant1">
    <form action="/order">
    <input type="hidden" name="marchant" value="bento taro">
    <td>
        <b>Bento Taro</b><br/>
        minimum order: 5<br/>
        current order: 3<br/>
        <div id="TimeLeft1"></div><br/>
        <div id="map1" class="map"/>
    </td>
    <td>
        Item 1 <input type="radio" name="item" value="item1"><br/>
        <image src="images/item1.jpg"/>
    </td>
    <td>
        Item 2 <input type="radio" name="item" value="item2"><br/>
        <image src="images/item2.jpg"/>
    </td>
    <td><p><input type="submit" value="order"></p></td>
    </form>
</tr>

<tr id="marchant2">
  <form action="/order">
  <input type="hidden" name="marchant" value="Restrant Shinjuku">
  <td>
        <b>Restrante Shinjuku</b><br/>
        minimum order: 5<br/>
        current order: 3<br/>
        <div id="TimeLeft2"></div><br/>
        <div id="map2" class="map"/>
  </td>
  <td>
    Item 3 <input type="radio" name="item" value="item3"><br/>
    <image src="images/item3.jpg"/>
  </td>
  <td>
    Item 4 <input type="radio" name="item" value="item4"><br/>
    <image src="images/item4.jpg"/>
  </td>
  <td><p><input type="submit" value="order"></p></td>
</form>
</tr>
</table>
</p>
"""

$("input:button").click((e) ->
  $('#marchant_table').append(tmp)
)