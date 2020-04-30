```python
import pandas as pd
from sqlalchemy import create_engine
import pymysql

engine = create_engine('mysql+pymysql://root@localhost/SIRET')

A=pd.read_sql_query('select count(*) from etab_marseille',engine)
print (A)

B=pd.read_sql_query('select count(*) from etab_marseille',engine)

print('lecture des données',B)
```

    lecture des données    count(*)
    0  29384505



```python
import pandas as pd
from sqlalchemy import create_engine
import pymysql

engine = create_engine('mysql+pymysql://root@localhost/SIRET')
x=input("Entrer l'arrondissement:")
print(x)
requete='select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement ='%s'
union 
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement ='%s'
UNION
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where  codePostalEtablissement=13003
UNION
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where  codePostalEtablissement=13004'
V=pd.read_sql_query('select codePostalEtablissement, count(*) as etablissement_par_arrondissement from etab_marseille group by codePostalEtablissement',engine)
print(V)
```


```python
import pandas as pd
from sqlalchemy import create_engine
import pymysql

engine = create_engine('mysql+pymysql://root@localhost/SIRET')
x=input("Entrer l'arrondissement:")
print(x)

requete="""select codePostalEtablissement, count(*) as nbre_etablissement_par_arrondissement 
from etab_marseille where codePostalEtablissement = '%s' 
union select codePostalEtablissement, count(*) as arrondissement 
from etab_marseille where codePostalEtablissement ='%s' 
UNION select codePostalEtablissement, count(*) as arrondissement from etab_marseille 
where  codePostalEtablissement='%s' UNION select codePostalEtablissement, count(*) as arrondissement 
from etab_marseille where  codePostalEtablissement='%s';""" % (x,x,x,x,)
V=pd.read_sql_query(requete, engine)
print (V)
```

    Entrer l'arrondissement:13001
    13001
      codePostalEtablissement  nbre_etablissement_par_arrondissement
    0                   13001                                  54753



```python
import pandas as pd
from sqlalchemy import create_engine
import pymysql

engine = create_engine('mysql+pymysql://root@localhost/SIRET')

requete="""select etab_hist.dateDebut, (timestampdiff(year, etab_marseille.dateCreationEtablissement, etab_hist.dateDebut)) as duree from etab_hist 
inner join etab_marseille on etab_hist.siret=etab_marseille.siret 
where etab_hist.changementActivitePrincipaleEtablissement=1 and etab_hist.etatAdministratifEtablissement='F' 
limit 10;"""

v=pd.read_sql_query(requete, engine)
print(v)
```

       dateDebut  duree
    0 1992-12-25     92
    1 2008-01-01     17
    2 1991-12-25      0
    3 1992-12-25     92
    4 1993-12-25     93
    5 1995-12-25      5
    6 1996-12-25      6
    7 1986-12-25     32
    8 2008-01-01     54
    9 1992-12-25     92



```python
import pandas as pd
from sqlalchemy import create_engine
import pymysql

engine = create_engine('mysql+pymysql://root@localhost/SIRET')
x = input("Entrer l'arrondissement")
print(x)

requete="""select codePostalEtablissement, count(*) as etablissement_par_arrondissement 
from etab_marseille group by codePostalEtablissement'%s';""" % (x,)
B=pd.read_sql_query(requete, engine)
print(B)
```

    Entrer l'arrondissement13001
    13001



    ---------------------------------------------------------------------------

    ProgrammingError                          Traceback (most recent call last)

    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in _execute_context(self, dialect, constructor, statement, parameters, *args)
       1248                     self.dialect.do_execute(
    -> 1249                         cursor, statement, parameters, context
       1250                     )


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/default.py in do_execute(self, cursor, statement, parameters, context)
        579     def do_execute(self, cursor, statement, parameters, context=None):
    --> 580         cursor.execute(statement, parameters)
        581 


    ~/anaconda3/lib/python3.7/site-packages/pymysql/cursors.py in execute(self, query, args)
        169 
    --> 170         result = self._query(query)
        171         self._executed = query


    ~/anaconda3/lib/python3.7/site-packages/pymysql/cursors.py in _query(self, q)
        327         self._clear_result()
    --> 328         conn.query(q)
        329         self._do_get_result()


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in query(self, sql, unbuffered)
        516         self._execute_command(COMMAND.COM_QUERY, sql)
    --> 517         self._affected_rows = self._read_query_result(unbuffered=unbuffered)
        518         return self._affected_rows


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in _read_query_result(self, unbuffered)
        731             result = MySQLResult(self)
    --> 732             result.read()
        733         self._result = result


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in read(self)
       1074         try:
    -> 1075             first_packet = self.connection._read_packet()
       1076 


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in _read_packet(self, packet_type)
        683         packet = packet_type(buff, self.encoding)
    --> 684         packet.check_error()
        685         return packet


    ~/anaconda3/lib/python3.7/site-packages/pymysql/protocol.py in check_error(self)
        219             if DEBUG: print("errno =", errno)
    --> 220             err.raise_mysql_exception(self._data)
        221 


    ~/anaconda3/lib/python3.7/site-packages/pymysql/err.py in raise_mysql_exception(data)
        108     errorclass = error_map.get(errno, InternalError)
    --> 109     raise errorclass(errno, errval)
    

    ProgrammingError: (1064, "You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13001'' at line 2")

    
    The above exception was the direct cause of the following exception:


    ProgrammingError                          Traceback (most recent call last)

    <ipython-input-11-79c0c2e5700f> in <module>
          9 requete="""select codePostalEtablissement, count(*) as etablissement_par_arrondissement 
         10 from etab_marseille group by codePostalEtablissement'%s';""" % (x,)
    ---> 11 B=pd.read_sql_query(requete, engine)
         12 print(B)


    ~/anaconda3/lib/python3.7/site-packages/pandas/io/sql.py in read_sql_query(sql, con, index_col, coerce_float, params, parse_dates, chunksize)
        330         coerce_float=coerce_float,
        331         parse_dates=parse_dates,
    --> 332         chunksize=chunksize,
        333     )
        334 


    ~/anaconda3/lib/python3.7/site-packages/pandas/io/sql.py in read_query(self, sql, index_col, coerce_float, parse_dates, params, chunksize)
       1216         args = _convert_params(sql, params)
       1217 
    -> 1218         result = self.execute(*args)
       1219         columns = result.keys()
       1220 


    ~/anaconda3/lib/python3.7/site-packages/pandas/io/sql.py in execute(self, *args, **kwargs)
       1085     def execute(self, *args, **kwargs):
       1086         """Simple passthrough to SQLAlchemy connectable"""
    -> 1087         return self.connectable.execute(*args, **kwargs)
       1088 
       1089     def read_table(


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in execute(self, statement, *multiparams, **params)
       2177 
       2178         connection = self._contextual_connect(close_with_result=True)
    -> 2179         return connection.execute(statement, *multiparams, **params)
       2180 
       2181     def scalar(self, statement, *multiparams, **params):


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in execute(self, object_, *multiparams, **params)
        980         """
        981         if isinstance(object_, util.string_types[0]):
    --> 982             return self._execute_text(object_, multiparams, params)
        983         try:
        984             meth = object_._execute_on_connection


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in _execute_text(self, statement, multiparams, params)
       1153             parameters,
       1154             statement,
    -> 1155             parameters,
       1156         )
       1157         if self._has_events or self.engine._has_events:


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in _execute_context(self, dialect, constructor, statement, parameters, *args)
       1251         except BaseException as e:
       1252             self._handle_dbapi_exception(
    -> 1253                 e, statement, parameters, cursor, context
       1254             )
       1255 


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in _handle_dbapi_exception(self, e, statement, parameters, cursor, context)
       1471                 util.raise_from_cause(newraise, exc_info)
       1472             elif should_wrap:
    -> 1473                 util.raise_from_cause(sqlalchemy_exception, exc_info)
       1474             else:
       1475                 util.reraise(*exc_info)


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/util/compat.py in raise_from_cause(exception, exc_info)
        396     exc_type, exc_value, exc_tb = exc_info
        397     cause = exc_value if exc_value is not exception else None
    --> 398     reraise(type(exception), exception, tb=exc_tb, cause=cause)
        399 
        400 


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/util/compat.py in reraise(tp, value, tb, cause)
        150             value.__cause__ = cause
        151         if value.__traceback__ is not tb:
    --> 152             raise value.with_traceback(tb)
        153         raise value
        154 


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/base.py in _execute_context(self, dialect, constructor, statement, parameters, *args)
       1247                 if not evt_handled:
       1248                     self.dialect.do_execute(
    -> 1249                         cursor, statement, parameters, context
       1250                     )
       1251         except BaseException as e:


    ~/anaconda3/lib/python3.7/site-packages/sqlalchemy/engine/default.py in do_execute(self, cursor, statement, parameters, context)
        578 
        579     def do_execute(self, cursor, statement, parameters, context=None):
    --> 580         cursor.execute(statement, parameters)
        581 
        582     def do_execute_no_params(self, cursor, statement, context=None):


    ~/anaconda3/lib/python3.7/site-packages/pymysql/cursors.py in execute(self, query, args)
        168         query = self.mogrify(query, args)
        169 
    --> 170         result = self._query(query)
        171         self._executed = query
        172         return result


    ~/anaconda3/lib/python3.7/site-packages/pymysql/cursors.py in _query(self, q)
        326         self._last_executed = q
        327         self._clear_result()
    --> 328         conn.query(q)
        329         self._do_get_result()
        330         return self.rowcount


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in query(self, sql, unbuffered)
        515                 sql = sql.encode(self.encoding, 'surrogateescape')
        516         self._execute_command(COMMAND.COM_QUERY, sql)
    --> 517         self._affected_rows = self._read_query_result(unbuffered=unbuffered)
        518         return self._affected_rows
        519 


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in _read_query_result(self, unbuffered)
        730         else:
        731             result = MySQLResult(self)
    --> 732             result.read()
        733         self._result = result
        734         if result.server_status is not None:


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in read(self)
       1073     def read(self):
       1074         try:
    -> 1075             first_packet = self.connection._read_packet()
       1076 
       1077             if first_packet.is_ok_packet():


    ~/anaconda3/lib/python3.7/site-packages/pymysql/connections.py in _read_packet(self, packet_type)
        682 
        683         packet = packet_type(buff, self.encoding)
    --> 684         packet.check_error()
        685         return packet
        686 


    ~/anaconda3/lib/python3.7/site-packages/pymysql/protocol.py in check_error(self)
        218             errno = self.read_uint16()
        219             if DEBUG: print("errno =", errno)
    --> 220             err.raise_mysql_exception(self._data)
        221 
        222     def dump(self):


    ~/anaconda3/lib/python3.7/site-packages/pymysql/err.py in raise_mysql_exception(data)
        107         errval = data[3:].decode('utf-8', 'replace')
        108     errorclass = error_map.get(errno, InternalError)
    --> 109     raise errorclass(errno, errval)
    

    ProgrammingError: (pymysql.err.ProgrammingError) (1064, "You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''13001'' at line 2")
    [SQL: select codePostalEtablissement, count(*) as etablissement_par_arrondissement 
    from etab_marseille group by codePostalEtablissement'13001';]
    (Background on this error at: http://sqlalche.me/e/f405)



```python

```
