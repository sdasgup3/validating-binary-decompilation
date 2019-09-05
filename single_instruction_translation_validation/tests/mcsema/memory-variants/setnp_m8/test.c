void leaf() {
  __asm__("setnp -4(%rbp)");
  }

void main() {
  leaf();
}