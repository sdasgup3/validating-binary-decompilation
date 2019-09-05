void leaf() {
  __asm__("setnle -4(%rbp)");
  }

void main() {
  leaf();
}