void leaf() {
  __asm__("setpe -4(%rbp)");
  }

void main() {
  leaf();
}