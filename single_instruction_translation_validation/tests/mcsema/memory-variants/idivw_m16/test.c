void leaf() {
  __asm__("idivw -4(%rbp)");
  }

void main() {
  leaf();
}