const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack');
const mode = process.env.NODE_ENV || 'development';

module.exports = {
  mode,
  devServer: {
    historyApiFallback: true,
    port: 3000,
    hot: true
  },
  entry: {
    app: path.join(__dirname,  'index.tsx'),
  },
  output: {
    filename: "bundle.js"
},

  resolve: {
    extensions: ['', '.js', '.jsx', '.ts', '.tsx'],
  },

  module: {
    rules: [
      // {
      //   test: /\.(ts|tsx)?$/,
      //   exclude: /(node_modules)/,
      //   include: path.join(__dirname, '/src/'),
      //   use: ['babel-loader']
      // },
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader", "postcss-loader"],
      },
      {
        test: /\.tsx?$/, loader: "ts-loader" 
      }
    ],
  },

	output: {
    path: path.join(__dirname, '/dist'),
    filename: 'bundle.js',
  },

  plugins: [
		new webpack.ProvidePlugin({
      React: 'react',
    }),
    new HtmlWebpackPlugin({
      template: './public/index.html',
    }),
    new webpack.HotModuleReplacementPlugin(),
    require('tailwindcss'),
    require('autoprefixer'),
  ],
};