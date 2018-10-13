module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end


  #countryとcategoryを参照しサイズに変換して戻り値を返す。
  # @param [integer] item.rbのEnumを参照
  # @return [String] CategoryとCountoryを文字列形式にしたもの
  # @return [nil] 引数が CategoryとCountory 型以外の場合は nil
  def convert_str(category, country)
    result = ''
    if category == 0
      if country == 0
        result = ['1(S)','2(M)','3(L)','4(LL)','5(3L)']
      end
      if country == 1
        result = ['34','36','38','40','42']
      end
      if country == 2
        result = ['34','36','38','40','42']
      end
      if country == 3
        result = ['44','46','48','50','52']
      end
      if country == 4
        result = ['38','40','42','44','46']
      end
      if country == 5
        result = ['44','46','48','50','52']
      end
    elsif category == 1
      if country == 0
        result = ['1(S)','2(M)','3(L)','4(LL)','5(3L)']
      end
      if country == 1
        result = ['34','36','38','40','42']
      end
      if country == 2
        result = ['34','36','38','40','42']
      end
      if country == 3
        result = ['44','46','48','50','52']
      end
      if country == 4
        result = ['38','40','42','44','46']
      end
      if country == 5
        result = ['44','46','48','50','52']
      end
    elsif category == 2
      if country == 0
        result = ['68-71(XS)','71-76(S)','76-84(M)','84-94(L)','94-104(XL)']
      end
      if country == 1
        result = ['27(XS)','28-29(S)','30-31(M)','32-33(L)','34-45(XL)']
      end
      if country == 2
        result = ['27(XS)','28-29(S)','30-31(M)','32-33(L)','34-45(XL)']
      end
      if country == 3
        result = ['42-46(XS)','46-48(S)','48-50(M)','50-54(L)','54-58(XL)']
      end
      if country == 4
        result = ['36-38(XS)','38-40(S)','40-44(M)','44-48(L)','48-50(XL)']
      end
      if country == 5
        result = ['42-44(XS)','44-46(S)','46-48(M)','50(L)','51-52(XL)']
      end
    elsif category == 3
      if country == 0
        result = %w(
          23.5
          24.0
          24.5
          25.0
          25.5
          26.0
          26.5
          27.0
          27.5
          28.0
          28.5
          29.0
          29.5
          30.0
        )
      end
      if country == 1
        result = %w(
          5.5
          6
          6.5
          7
          7.5
          8
          8.5
          9
          9.5
          10
          10.5
          11
          11.5
          12
          13
        )
      end
      if country == 2
        result = %w(
          4.5
          5
          5.5
          6
          6.5
          7
          7.5
          8
          8.5
          9
          9.5
          10
          11
          12
        )
      end
      if country == 6
        result = %(
          38.5
          39
          39.5
          40
          40.5
          41
          41.5
          42
          42.5
          43
          43.5
          44
          44.5
          45
          46
        )
      end
    end
    return result
  end
end
