package com.jayway.jsonpath.internal;

import com.jayway.jsonpath.Configuration.Defaults;
import com.jayway.jsonpath.Option;
import com.jayway.jsonpath.spi.json.JsonOrgJsonProvider;
import com.jayway.jsonpath.spi.json.JsonProvider;
import com.jayway.jsonpath.spi.mapper.JsonOrgMappingProvider;
import com.jayway.jsonpath.spi.mapper.MappingProvider;

import java.util.HashSet;
import java.util.Set;

public final class DefaultsImpl implements Defaults {

  public static final DefaultsImpl INSTANCE = new DefaultsImpl();


  @Override
  public JsonProvider jsonProvider() {
    return new JsonOrgJsonProvider();
  }

  @Override
  public Set<Option> options() {
    return new HashSet<>();
  }

  @Override
  public MappingProvider mappingProvider() {
    return new JsonOrgMappingProvider();
  }


  private DefaultsImpl() {
  }

}
