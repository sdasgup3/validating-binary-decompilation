void leaf() {
  __asm__("andb -4(%rbp), %ah");
  }

void main() {
  leaf();
}